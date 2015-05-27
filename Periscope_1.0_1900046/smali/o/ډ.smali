.class public Lo/ډ;
.super Lo/ϛ;
.source ""

# interfaces
.implements Lo/ב;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ډ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\u03db<Landroid/os/ParcelFileDescriptor;>;Lo/\u05d1<Landroid/net/Uri;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/ɽ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Lo/\u027d<Lo/\ufee3;Landroid/os/ParcelFileDescriptor;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Lo/ϛ;-><init>(Landroid/content/Context;Lo/ɽ;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected ˊ(Landroid/content/Context;Landroid/net/Uri;)Lo/Į;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Landroid/net/Uri;)Lo/\u012e<Landroid/os/ParcelFileDescriptor;>;"
        }
    .end annotation

    .line 48
    new-instance v0, Lo/ȓ;

    invoke-direct {v0, p1, p2}, Lo/ȓ;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method protected ˊ(Landroid/content/Context;Ljava/lang/String;)Lo/Į;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Ljava/lang/String;)Lo/\u012e<Landroid/os/ParcelFileDescriptor;>;"
        }
    .end annotation

    .line 53
    new-instance v0, Lo/ŕ;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lo/ŕ;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method
