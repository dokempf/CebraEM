
rule run_multicut_<name>:
    priority: 200
    input:
        os.path.join(project_path, "snk_wf", "run_<name>_{idx}.pkl")
    output:
        os.path.join(project_path, "snk_wf", "run_multicut_{beta}_<name>_{idx}.json")
    resources:
        cpus=1, mem_mb=1024, time_min=10, gpus=0
    params:
        image_name="<name>",
        p='htc',
        gres=''
    script:
        os.path.join(cebra_em_path, 'run_scripts', 'run_multicut.py')
