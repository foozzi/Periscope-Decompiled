.class public Lo/ٳ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Landroid/content/Context;Lo/ٲ$if;)Lo/ٲ;
    .locals 3

    .line 13
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 14
    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-eqz v2, :cond_1

    .line 16
    new-instance v0, Lo/ژ;

    invoke-direct {v0, p1, p2}, Lo/ژ;-><init>(Landroid/content/Context;Lo/ٲ$if;)V

    return-object v0

    .line 18
    :cond_1
    new-instance v0, Lo/ใ;

    invoke-direct {v0}, Lo/ใ;-><init>()V

    return-object v0
.end method
