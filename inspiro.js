// Run with node

(() => {
    let arr = [
        'When you feel good about yourself, you\'ve already won half the battle.',
        'You WILL succeed. Keep going!',
        'Always remember the happy times.',
        'Code like your life depends on it!',
        'Love yourself, love your friends, love your work, and love wins.',
        'What have you done today to defy global capitalism?',
        'You are worth more than your paycheck.',
        'Your friends love your wit and intellect.',
        'Remember: you are only productive when you are well-rested.',
        'If you had fun, it was not a waste of time.',
        'Learn something new every day!',
        'Life before death. Strength before weakness. Journey before destination.',
        'You ARE a good programmer.'
    ];

    let index = Math.floor(Math.random() * arr.length);

    console.log(arr[index]);
})();