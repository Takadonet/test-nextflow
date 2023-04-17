process wc_file_to_output {
    publishDir "${params.outdir}/"

    container 'clarinpl/wccldict:latest'

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

    container 'clarinpl/wccldict:latest'

    input:
    path(input)

    output:
    stdout

    script:
    """
    wc $input
    """
}
