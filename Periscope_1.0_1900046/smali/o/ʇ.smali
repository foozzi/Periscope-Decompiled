.class public Lo/ʇ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﺀ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\ufe80<Ljava/io/InputStream;Lo/\u0138;>;"
    }
.end annotation


# instance fields
.field private final lw:Lo/ﺀ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufe80<Lo/\uff8c;Lo/\u0138;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ﺀ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufe80<Lo/\uff8c;Lo/\u0138;>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lo/ʇ;->lw:Lo/ﺀ;

    .line 20
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/ʇ;->lw:Lo/ﺀ;

    invoke-interface {v0}, Lo/ﺀ;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Ljava/io/InputStream;II)Lo/ڔ;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/io/InputStream;II)Lo/\u0694<Lo/\u0138;>;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lo/ʇ;->lw:Lo/ﺀ;

    new-instance v1, Lo/ﾌ;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lo/ﾌ;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v0, v1, p2, p3}, Lo/ﺀ;->ˋ(Ljava/lang/Object;II)Lo/ڔ;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ˋ(Ljava/lang/Object;II)Lo/ڔ;
    .locals 1

    .line 14
    move-object v0, p1

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {p0, v0, p2, p3}, Lo/ʇ;->ˊ(Ljava/io/InputStream;II)Lo/ڔ;

    move-result-object v0

    return-object v0
.end method
