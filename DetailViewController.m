//
//  DetailViewController.m
//  DayX
//
//  Created by Joel on 1/19/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DetailViewController.h" 


@interface DetailViewController ()

@property (nonatomic, strong) IBOutlet UITextField *textField;
@property (nonatomic, strong) IBOutlet UITextView *textView;
@property (nonatomic, strong) IBOutlet UIButton *clearButton;

@end

@implementation DetailViewController

- (void)updateWithDictionary:(NSDictionary *)dictionary {
    self.textField.text = dictionary[TitleKey];
    self.textView.text = dictionary[TextKey];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.textField.delegate = self;
    
}
- (IBAction)clear:(id)sender {
    self.textField.text = nil;
    self.textView.text = nil;
}

-(void)textFieldDidEndEditing:(UITextField *)textField {
    [self save:textField];
}

-(void)textViewDidChange:(UITextView *)textView {
    [self save:textView];
}

- (void)save:(id)sender {
    
    NSDictionary *entry = @{TitleKey: self.textField.text, TextKey: self.textView.text};
    [[NSUserDefaults standardUserDefaults] setObject:entry forKey:EntryKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
