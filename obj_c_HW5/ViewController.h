#import <UIKit/UIKit.h>
#import "Load.h"
#import <WebKit/WebKit.h>

@interface ViewController : UIViewController<UISearchBarDelegate>
@property (strong, nonatomic) Load * load;
@property (weak, nonatomic) IBOutlet WKWebView *webView;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
-(void) performLoadingWithGETRequest;
-(void) performLoadingWithPOSTRequest;
-(void) performLoadingSearchResultsFromYandex: (NSString *) searchQuery;
@end