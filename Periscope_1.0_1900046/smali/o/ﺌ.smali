.class public Lo/ﺌ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ɽ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;Lo/\u027d<Ljava/io/File;TT;>;"
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
    iput-object p1, p0, Lo/ﺌ;->js:Lo/ɽ;

    .line 21
    return-void
.end method


# virtual methods
.method public ˊ(Ljava/io/File;II)Lo/Į;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/io/File;II)Lo/\u012e<TT;>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lo/ﺌ;->js:Lo/ɽ;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lo/ɽ;->ˎ(Ljava/lang/Object;II)Lo/Į;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ˎ(Ljava/lang/Object;II)Lo/Į;
    .locals 1

    .line 15
    move-object v0, p1

    check-cast v0, Ljava/io/File;

    invoke-virtual {p0, v0, p2, p3}, Lo/ﺌ;->ˊ(Ljava/io/File;II)Lo/Į;

    move-result-object v0

    return-object v0
.end method
