.class Lo/qt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/px;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/px<Ljava/lang/String;>;"
    }
.end annotation


# instance fields
.field final synthetic Wq:Lo/qs;


# direct methods
.method constructor <init>(Lo/qs;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lo/qt;->Wq:Lo/qs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ʹ(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    if-nez v3, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    return-object v0
.end method

.method public synthetic י(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0, p1}, Lo/qt;->ʹ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
