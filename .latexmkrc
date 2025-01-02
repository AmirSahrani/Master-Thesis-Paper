# Ensure output directory exists
sub create_dirs {
    my $dir = shift;
    unless (-d $dir) {
        mkdir $dir or die "Couldn't create $dir: $!";
    }
}

# Define custom subdirectories for specific file types
my %ext_dir = (
    'log' => "logs",
    'toc' => "tocs",
    'out' => "outputs",
    'aux' => "auxiliaries",
    'fls' => "fls",
    'fdb_latexmk' => "fdb",
    'synctex.gz' => "synctex",
);

# Create directories on initialization
foreach my $ext (values %ext_dir) {
    create_dirs($ext);
}

# Move auxiliary files into respective directories
foreach my $ext (keys %ext_dir) {
    $clean_ext .= "|$ext";
    $clean_full_ext .= "|$ext";
    $out_dir = $ext_dir{$ext};
    $out_split = sub { return $ext_dir{$_[0]} // '.'; };
    push @generated_exts, $ext;
}

# Default options
$pdf_mode = 1;                # Generate PDFs by default
$synctex = 1;                 # Enable SyncTeX
$interaction = "nonstopmode"; # Avoid user interaction on errors

# Configuration for multiple TeX files
if (!-e "latexmkrc") {
    # Use the local `latexmkrc` for further customizations
    print "Local latexmkrc detected. Applying specific settings.\n";
}
