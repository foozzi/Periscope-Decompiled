.class public Lo/แ;
.super Lo/ϛ;
.source ""

# interfaces
.implements Lo/ܕ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/แ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\u03db<Ljava/io/InputStream;>;Lo/\u0715<Landroid/net/Uri;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/ɽ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Lo/\u027d<Lo/\ufee3;Ljava/io/InputStream;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Lo/ϛ;-><init>(Landroid/content/Context;Lo/ɽ;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected ˊ(Landroid/content/Context;Landroid/net/Uri;)Lo/Į;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Landroid/net/Uri;)Lo/\u012e<Ljava/io/InputStream;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lo/ʔ;

    invoke-direct {v0, p1, p2}, Lo/ʔ;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method protected ˊ(Landroid/content/Context;Ljava/lang/String;)Lo/Į;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Ljava/lang/String;)Lo/\u012e<Ljava/io/InputStream;>;"
        }
    .end annotation

    .line 56
    new-instance v0, Lo/ʏ;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lo/ʏ;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method
