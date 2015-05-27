.class Lcom/localytics/android/MarketingHandler$17;
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

    .line 1718
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$17;->this$0:Lcom/localytics/android/MarketingHandler;

    invoke-direct {p0}, Lcom/localytics/android/MarketingCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1722
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 1723
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    .line 1725
    invoke-static {v1, v2}, Lcom/localytics/android/Localytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1726
    const/4 v0, 0x0

    return-object v0
.end method
