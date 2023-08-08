document.addEventListener('DOMContentLoaded', () => {
    const url = 'http://localhost:3000/api/list.php';
    fetch(url)
        .then(resp => resp.json())
        .then(data => {
            console.log(data);
        });
});