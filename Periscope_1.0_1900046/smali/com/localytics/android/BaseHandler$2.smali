.class Lcom/localytics/android/BaseHandler$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/BaseHandler;

.field final synthetic val$adjustMaxRowToUpload:Ljava/lang/Boolean;

.field final synthetic val$customerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/localytics/android/BaseHandler;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/localytics/android/BaseHandler$2;->this$0:Lcom/localytics/android/BaseHandler;

    iput-object p2, p0, Lcom/localytics/android/BaseHandler$2;->val$adjustMaxRowToUpload:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/localytics/android/BaseHandler$2;->val$customerId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/localytics/android/BaseHandler$2;->this$0:Lcom/localytics/android/BaseHandler;

    iget-object v1, p0, Lcom/localytics/android/BaseHandler$2;->val$adjustMaxRowToUpload:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/localytics/android/BaseHandler$2;->val$customerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/localytics/android/BaseHandler;->_upload(ZLjava/lang/String;)V

    .line 111
    return-void
.end method
