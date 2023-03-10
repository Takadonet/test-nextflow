process wc_file_to_output {
    publishDir "${params.outdir}/"

    input:
    path(input)

    output:
    path("count.txt")

    script:
    """
    wc $input > count.txt
    """
}
process wc_file_to_stdout {

    input:
    path(input)

    output:
    stdout

    script:
    """
    wc $input
    """
}
