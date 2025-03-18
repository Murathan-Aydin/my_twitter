export async function uploadMedia(file: any) {
    const formData = new FormData();

    formData.append("image", file);

    const response = await fetch(`http://198.244.233.0/api/upload.php`, {
        method: "POST",
        body: formData,
    });
    const data = await response.json();

    return data;
}