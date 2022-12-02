function show_result(data){
    var result = document.getElementById("result");
    if (data.value.length != 0) {
        var form = document.querySelector("form-container");
        var old_table = document.querySelector("table")
        if (old_table) {
            old_table.remove();
        }

        result.textContent = "Result: ";

        var table = document.createElement("table");
        table.classList.add("table-stripped");
        result.appendChild(table);

        var thead = document.createElement("thead");
        table.appendChild(thead);
        var row_head = document.createElement("tr");
        thead.appendChild(row_head);
        var index_header = document.createElement("th");
        var mersenne_number_header = document.createElement("th");
        row_head.appendChild(index_header);
        row_head.appendChild(mersenne_number_header);
        index_header.textContent = "Index";
        mersenne_number_header.textContent = "Mersenne numbers";
        var tbody = document.createElement("tbody");
        table.appendChild(tbody);

        for (var i = 0; i < data.value.length; i++){
            var row = document.createElement("tr");
            tbody.appendChild(row);
            var index = document.createElement("td");
            var mersenne_number = document.createElement("td");
            mersenne_number.setAttribute("id", `mersenne-${i + 1}`);
            row.appendChild(index);
            row.appendChild(mersenne_number);
            index.textContent = i + 1;
            mersenne_number.textContent = data.value[i];
        }
        
    }
}

$(document).ready(function(){
    $("#mersenne_form").bind("ajax:success", function(xhr, data, status) {
        console.log(data);
    // data is already an object
        show_result(data)
    })
})