const categorySelector = () => {
    console.log("ciao")
    const items = document.querySelectorAll(".item")
    const btn = document.querySelectorAll(".btn-category")
    btn.forEach((button) => {
        console.log("ciao")
        button.addEventListener("click", event => {
        items.forEach((item) => {
            if ( event.currentTarget.value === "All" || item.dataset.category === event.currentTarget.value ) {
                item.style.display = "block"
            } else {
                item.style.display = "none"
            }
        })
        })
    })
}


export { categorySelector };