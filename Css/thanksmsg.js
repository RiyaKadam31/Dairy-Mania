Swal.fire({
    title: 'Thank You!',
    text: 'Your order has been successfully placed.',
    icon: 'success',
    confirmButtonText: 'OK',
    background: '#f2f2f2',    // Custom background color
    confirmButtonColor: '#4CAF50', // Custom button color
    backdrop: `rgba(0, 0, 0, 0.4)`, // Custom backdrop
    customClass: {
        title: 'my-title-class',
        popup: 'my-popup-class',
    }
});