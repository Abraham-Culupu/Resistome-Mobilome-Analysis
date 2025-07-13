#!/bin/bash

# Input directory containing .fasta genome files
input_dir="genomes"

# Output directory for AMRFinderPlus results
output_dir="amrfinder-results"
mkdir -p "$output_dir"

# Loop through each genome file
for fasta in "$input_dir"/*.fasta; do
    sample_name=$(basename "$fasta" .fasta)
    echo "🔍 Analyzing resistance and virulence genes in: $sample_name"
    
    # Run AMRFinderPlus
    amrfinder -n "$fasta" -O Klebsiella_pneumoniae --plus -o "${output_dir}/${sample_name}_amrfinder.tsv"
    
    echo "✅ Output saved to: ${output_dir}/${sample_name}_amrfinder.tsv"
done

echo "🎯 AMRFinder analysis completed for all samples."


