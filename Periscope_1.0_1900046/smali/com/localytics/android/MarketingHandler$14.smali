.class Lcom/localytics/android/MarketingHandler$14;
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

    .line 1475
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$14;->this$0:Lcom/localytics/android/MarketingHandler;

    invoke-direct {p0}, Lcom/localytics/android/MarketingCallable;-><init>()V

    return-void
.end method


# virtual methods
.method call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1479
    invoke-static {}, Lcom/localytics/android/Localytics;->getInstallId()Ljava/lang/String;

    move-result-object v3

    .line 1480
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1482
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getApiLevel()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 1484
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    move-object v4, v0

    .line 1485
    invoke-virtual {v4, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1486
    goto :goto_0

    .line 1489
    :cond_0
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    move-object v4, v0

    .line 1490
    invoke-virtual {v4, v3}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1492
    :goto_0
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been copied to the clipboard."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1496
    :cond_1
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    const-string v1, "No install id found. Please check your integration."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1499
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
