#include "constant.h"
#include <stdio.h>
#include <string.h>

int main()
{
    //variables
    int selection;
    printf("Current Service Prices\n. Select an Option: \n");
    printf("1. Linux Installation\n");
    printf("2. Windows Installation or Troubleshooting\n");
    printf("3. Standard Call Out Fee\n");
    printf("4. Remote Assistance Fee\n");
    scanf(" %d", &selection);
        if (selection == 1)
        {
            printf("Linux Install Price is: $%.2f\n", servicelinux);
        }
        else if (selection == 2)
        {
            printf("Windows Install Price is: $%.2f\n", servicewindows);
        }
        else if (selection == 3)
        {
            printf("Standard Call Out Fee is: $%.2f\n", calloutfee);
        }
        else if (selection == 4)
        {
            printf("Remote Assist Rate is: $%.2f\n", remoteassist);
        }
return 0;
}
