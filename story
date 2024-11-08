pragma solidity ^0.8.0;

contract Story {
    string private storyText;

    // 事件，用于记录故事更新
    event StoryUpdated(string newStory);

    // 存储新的故事
    function setStory(string memory _story) public {
        storyText = _story;
        emit StoryUpdated(_story);
    }

    // 获取当前故事
    function getStory() public view returns (string memory) {
        return storyText;
