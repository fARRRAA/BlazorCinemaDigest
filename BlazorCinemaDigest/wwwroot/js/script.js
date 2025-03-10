window.showConfirmationDialog = async (message) => {
    const result = confirm(message); 
    return result; 
};
window.scrollBottom = () => {
    var chatMessages = document.getElementsByClassName("chat-messages");
    if (chatMessages) {
        var lastMessage = chatMessages.lastElementChild;
        if (lastMessage) {
            lastMessage.scrollIntoView({ behavior: "smooth", block: "end" });
        }
    }
};
