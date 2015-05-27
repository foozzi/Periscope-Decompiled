.class Lo/ژ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ٲ;


# instance fields
.field private final dV:Landroid/content/Context;

.field private final lG:Lo/ٲ$if;

.field private lH:Z

.field private lI:Z

.field private final lJ:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/ٲ$if;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lo/ں;

    invoke-direct {v0, p0}, Lo/ں;-><init>(Lo/ژ;)V

    iput-object v0, p0, Lo/ژ;->lJ:Landroid/content/BroadcastReceiver;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/ژ;->dV:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lo/ژ;->lG:Lo/ٲ$if;

    .line 31
    return-void
.end method

.method private unregister()V
    .locals 2

    .line 44
    iget-boolean v0, p0, Lo/ژ;->lI:Z

    if-nez v0, :cond_0

    .line 45
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lo/ژ;->dV:Landroid/content/Context;

    iget-object v1, p0, Lo/ژ;->lJ:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ژ;->lI:Z

    .line 50
    return-void
.end method

.method static synthetic ˊ(Lo/ژ;)Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lo/ژ;->lH:Z

    return v0
.end method

.method static synthetic ˊ(Lo/ژ;Landroid/content/Context;)Z
    .locals 1

    .line 10
    invoke-direct {p0, p1}, Lo/ژ;->ˍ(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic ˊ(Lo/ژ;Z)Z
    .locals 0

    .line 10
    iput-boolean p1, p0, Lo/ژ;->lH:Z

    return p1
.end method

.method static synthetic ˋ(Lo/ژ;)Lo/ٲ$if;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/ژ;->lG:Lo/ٲ$if;

    return-object v0
.end method

.method private ˍ(Landroid/content/Context;)Z
    .locals 3

    .line 53
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v1, v0

    .line 55
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 56
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ژ()V
    .locals 4

    .line 34
    iget-boolean v0, p0, Lo/ژ;->lI:Z

    if-eqz v0, :cond_0

    .line 35
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lo/ژ;->dV:Landroid/content/Context;

    invoke-direct {p0, v0}, Lo/ژ;->ˍ(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lo/ژ;->lH:Z

    .line 39
    iget-object v0, p0, Lo/ژ;->dV:Landroid/content/Context;

    iget-object v1, p0, Lo/ژ;->lJ:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ژ;->lI:Z

    .line 41
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    .line 72
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lo/ژ;->ژ()V

    .line 62
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lo/ژ;->unregister()V

    .line 67
    return-void
.end method
