//
//  main.m
//  Lesson_2
//
//  Created by Nikita Vintonovich on 8/10/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        // ЗАДАЧА:
        // необходимо посчитать и вывести в консоль, сколько раз встречается число 37 в массиве
        // если ни разу не встречается - вывести в консоль текст "Числа 37 не было найдено"
        
        
        NSInteger itemsCount = 1000; // всего элементов в массиве
        NSMutableArray *array = [NSMutableArray new]; // создание масива, элементы которого можно изменять
        
        for (NSInteger i = 0; i < itemsCount; i++)
        {
            [array addObject:@(arc4random() % 99)]; // добавляем случайное число в массив
        }
        
        // таперь у нас есть массив array, содержащий 1000 элементов, каждый элемент - случайное число в диапазоне от 0 до 99
        
        
        
        // Пример работы программы:
        
        // в resultCount будем записывать количство найденных совпадений
        NSInteger resultCount = 0;
        
        for (NSInteger i = 0; i < array.count; i++)
        {
            // достаем элемент массива используя переменную currentNumber
            NSNumber *currentNumber = array[i];
            
            // сравниваем с числом 37. Если значение currentNumber равно 37 - увеличиваем счетчик resultCount
            if ([currentNumber integerValue] == 37)
            {
                resultCount++;
            }
        }
        
        if (resultCount > 0)
        {
            NSLog(@"Число 37 встречается %lu раз", resultCount);
        }
        else
        {
            NSLog(@"Числа 37 не было найдено");
        }
        
    }
    return 0;
}
