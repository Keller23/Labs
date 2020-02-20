count_t = '0';
count_o = '0';
function add_to_table(str1, str2){
	mas = document.querySelectorAll("#My_table td[name=c2]");
	mas1 = document.querySelectorAll("#My_table td[name=c3]");
	flag = true;
    for (let j = 0; j < mas.length; j++){
    	if ((mas[j].innerText.trim() === str1)&&(mas1[j].innerText.trim() === str2)){
        	flag = false;
			document.querySelectorAll("#My_table td[name=c3]")[j].innerText = str2;
			document.getElementById("Variety").value = "";
			document.getElementById("Price").value = "";

        }
    }
	if (flag){
		if (Number(str2)&& Number(str2)>0){
			count_t++;
			console.log(count_t);
			let tbody = document.getElementById("My_table").getElementsByTagName("tbody")[0];
			// [0] - т.к. самое первое нахождение tbody можно заменить на querySelector
			let row = document.createElement("tr");
			let col1 = document.createElement("th");
			let col2 = document.createElement("td");
			let col3 = document.createElement("td");
			row.setAttribute("onclick", "add_to_order(this)");
			col2.setAttribute("name", "c2");
          	col3.setAttribute("name", "c3");
			col1.appendChild(document.createTextNode(count_t));
			col2.appendChild(document.createTextNode(str1));
			col3.appendChild(document.createTextNode(str2));
			row.appendChild(col1);
			row.appendChild(col2);
			row.appendChild(col3);
			tbody.appendChild(row);
			document.getElementById("Variety").value = "";
			document.getElementById("Price").value = "";
		}
		else {
            alert("Введены неверные данные");
			document.getElementById("Price").value = "";
        }
	}
}

function add_to_order(row) {
	flag = true;
	mas = document.querySelectorAll("#My_order td[name=c2]");
	mas1 = document.querySelectorAll("#My_order td[name=c3]");
	for (let j = 0; j < mas.length; j++){
		if (row.cells[1].innerText === mas[j].innerText){
			document.querySelectorAll("#My_order td[name=c3]")[j].innerText = row.cells[2].innerText;
					flag = false;
					mas2 = document.querySelectorAll("#My_order td[name=c4]");
					mas2[j].innerText = (Number(mas2[j].innerText) + 1).toString();
		}
	}
	if (flag){
		count_o++;
		console.log(count_o);
		let t = document.getElementById("My_order").getElementsByTagName("tbody")[0];
		let row2 = document.createElement("tr");
		let td1 = document.createElement("th");
		let td2 = document.createElement("td");
		let td3 = document.createElement("td");
		let td4 = document.createElement("td");
		td2.setAttribute("name", "c2");
		td3.setAttribute("name", "c3");
		td4.setAttribute("name", "c4");
		td1.innerText = count_o;
		td2.innerText = row.cells[1].innerText;
		td3.innerText = row.cells[2].innerText;
		td4.innerText = "1";
		row2.appendChild(td1);
		row2.appendChild(td2);
		row2.appendChild(td3);
		row2.appendChild(td4);
		t.appendChild(row2);
	}
}

function print_cost() {
	let p = document.getElementById("summa");
	let sum = 0;
	n = document.querySelectorAll("#My_order td[name=c3]");
	m = document.querySelectorAll("#My_order td[name=c4]");
	for (let j = 0; j < n.length; j++){
		sum += Number(n[j].innerText) * Number(m[j].innerText);
	}
	p.innerText = "Вы заплатите: " + String(sum) + " $";
}
