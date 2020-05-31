package com.devops.tasker;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TasksController {
    @Autowired
    private TaskRepository taskRepository;

    @GetMapping(path="/tasks")
    public @ResponseBody Iterable<Task> getAllTasks() {
        return taskRepository.findAll();
    }

    @PostMapping(path="/tasks")
    public @ResponseBody String addNewTask (@RequestParam String name
            , @RequestParam Boolean completed) {

        Task task = new Task(name, completed);
        taskRepository.save(task);
        return "Saved";
    }
}

