const base = {
    get() {
        return {
            url : "http://localhost:8080/ssm2a866/",
            name: "ssm2a866",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm2a866/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "计算机实验室排课与查询系统小程序"
        } 
    }
}
export default base
