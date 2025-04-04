export const getTimeAgo = (timestamp: number) => {
    const date = Date.now();
    const newTimestamp = (date - timestamp);
    const seconds = Math.floor(newTimestamp / 1000);
    const minutes = Math.floor(seconds / 60);
    const hours = Math.floor(minutes / 60);
    const days = Math.floor(hours / 24);

    if (seconds < 60) {
        return `${seconds}s`;
    } else if (minutes < 60) {
        return `${minutes}m`;
    } else if (hours < 24) {
        return `${hours}h`;
    } else {
        return `${days}j`;
    }
}