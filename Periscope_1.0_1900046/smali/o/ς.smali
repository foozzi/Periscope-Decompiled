.class public Lo/ς;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ɽ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;Lo/\u027d<Ljava/lang/String;TT;>;"
    }
.end annotation


# instance fields
.field private final js:Lo/ɽ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u027d<Landroid/net/Uri;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ɽ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u027d<Landroid/net/Uri;TT;>;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lo/ς;->js:Lo/ɽ;

    .line 21
    return-void
.end method

.method private static ͺ(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 42
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ˊ(Ljava/lang/String;II)Lo/Į;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;II)Lo/\u012e<TT;>;"
        }
    .end annotation

    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    invoke-static {p1}, Lo/ς;->ͺ(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 31
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 33
    if-nez v2, :cond_2

    .line 34
    invoke-static {p1}, Lo/ς;->ͺ(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 38
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/ς;->js:Lo/ɽ;

    invoke-interface {v0, v1, p2, p3}, Lo/ɽ;->ˎ(Ljava/lang/Object;II)Lo/Į;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ˎ(Ljava/lang/Object;II)Lo/Į;
    .locals 1

    .line 16
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Lo/ς;->ˊ(Ljava/lang/String;II)Lo/Į;

    move-result-object v0

    return-object v0
.end method
