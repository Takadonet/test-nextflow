process wc_file_to_output {
    publishDir "${params.outdir}/"

    container 'wbitt/network-multitool:latest'

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

    container 'wbitt/network-multitool:latest'

    input:
    path(input)

    output:
    stdout

    script:
    """
    wc $input
    """
}
