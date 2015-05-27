.class Lcom/localytics/android/MarketingHandler$15;
.super Lcom/localytics/android/MarketingCallable;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/MarketingHandler;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler;)V
    .locals 0

    .line 1505
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$15;->this$0:Lcom/localytics/android/MarketingHandler;

    invoke-direct {p0}, Lcom/localytics/android/MarketingCallable;-><init>()V

    return-void
.end method


# virtual methods
.method call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1509
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/localytics/android/MarketingMessage;

    move-object v3, v0

    .line 1511
    new-instance v0, Lcom/localytics/android/MarketingHandler$15$1;

    invoke-direct {v0, p0, v3}, Lcom/localytics/android/MarketingHandler$15$1;-><init>(Lcom/localytics/android/MarketingHandler$15;Lcom/localytics/android/MarketingMessage;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/localytics/android/MarketingMessage;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler$15$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1564
    const/4 v0, 0x0

    return-object v0
.end method
