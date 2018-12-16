# Report

**Author:** _Ioannis Souflas_

### Introduction

The objective of this project is to train a Deep Q Learning (DQN) agent to navigate (and collect bananas) in a large, square enviroment. The enviroment has been prepared by the Udacity team and is similar to, but not identical to Banana Collector enviroment on the [Unity ML-Agents GitHub page](https://github.com/Unity-Technologies/ml-agents/blob/master/docs/Learning-Environment-Examples.md#banana-collector).

Detailed description of the enviroment can be found in the [Solution.ipynb](https://github.com/ioasou/deep-reinforcement-learning/tree/master/p1_navigation/Navigation_Solution/Solution.ipynb) Juputer script. 

The solution is based on the [dqn exersice](https://github.com/ioasou/deep-reinforcement-learning/blob/master/dqn/solution/Deep_Q_Network_Solution.ipynb).

**External References:** [DQN Algorithm - DeepMind](https://storage.googleapis.com/deepmind-media/dqn/DQNNaturePaper.pdf), [DQN Algorithm - Pytorch](https://pytorch.org/tutorials/intermediate/reinforcement_q_learning.html) and [Navigation Project](https://medium.com/@amitpatel.gt/double-dqn-48562b5f31c1)


### Learning Algorithm: DQN with Experience Replay

The main idea behind the Q-Learning is that we if we had an action-value function that could tell us what our retun would be, if we were to take an action in a given state, then we could easily construct a policy that maximizes our rewards. However, we don't know everything about the world, so we don't have access to the action-value function Q(s,a). But, since neural networks are universal function approximators, we can simply create one and train it to resemble the action-value function Q(s,a). For our training update rule, we'll use a fact that every Q(s,a) function for some policy obeys the [Bellman Equation](https://en.wikipedia.org/wiki/Bellman_equation).

Additionally we will be using experience replay memory for training our DQN. It stores the transitions that the agent observes, allowing us to reuse this data later. By sampling from it randomly, the transitions that build up a batch are decorrelated. It has been shown that this greatly stabilizes and improves the DQN training procedure.

The Q-Network consists of one input layer, two fully connected hidden layes with Relu activation followed by a fully conected output layer.

The hyper parameters of the main DQN algorithm are listed below (the values can be found in [Solution.ipynb](https://github.com/ioasou/deep-reinforcement-learning/tree/master/p1_navigation/Navigation_Solution/Solution.ipynb)):

- n_episodes: maximum number of training episodes
- max_t: maximun number of timesteps per episode (episode duration)
- eps_start: starting value of epsilon, for epsilon-greedy action selection
- eps_end: minimum value of epsilon 
- eps_decay: multiplicative factor (per episode) for decreasing epsilon

The hyper parameters of the agent are listed below (the values can be found in [Solution.ipynb](https://github.com/ioasou/deep-reinforcement-learning/tree/master/p1_navigation/Navigation_Solution/Solution.ipynb)):

- BUFFER_SIZE: replay buffer size
- BATCH_SIZE: mini batch size
- GAMMA: discount factor
- TAU: for soft update of target parameters
- LR: learning rate for optimizer
- UPDATE_EVERY: how often to update the network

The agent was trained on a Windows machine (64bit) without the use of GPU.


### Plot of Rewards

![Plot_of_Rewards](https://github.com/ioasou/deep-reinforcement-learning/tree/master/p1_navigation/Navigation_Solution/plot_of_rewards.png?raw=true)

**Training Results**
```
Episode 100	Average Score: 5.00
Episode 200	Average Score: 12.45
Episode 210	Average Score: 13.04
Environment solved in 110 episodes!	Average Score: 13.04
```

### Ideas for Future Work

