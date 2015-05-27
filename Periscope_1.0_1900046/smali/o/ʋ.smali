.class public Lo/ʋ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﺭ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\ufead<Lo/\u0138;>;"
    }
.end annotation


# instance fields
.field private final lx:Lo/ﺭ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufead<Landroid/graphics/Bitmap;>;"
        }
    .end annotation
.end field

.field private final ly:Lo/ﺭ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufead<Lo/\ufee0;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ი;Lo/ﺭ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u10d8;Lo/\ufead<Landroid/graphics/Bitmap;>;)V"
        }
    .end annotation

    .line 20
    new-instance v0, Lo/ｩ;

    invoke-direct {v0, p2, p1}, Lo/ｩ;-><init>(Lo/ﺭ;Lo/ი;)V

    invoke-direct {p0, p2, v0}, Lo/ʋ;-><init>(Lo/ﺭ;Lo/ﺭ;)V

    .line 21
    return-void
.end method

.method constructor <init>(Lo/ﺭ;Lo/ﺭ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufead<Landroid/graphics/Bitmap;>;Lo/\ufead<Lo/\ufee0;>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lo/ʋ;->lx:Lo/ﺭ;

    .line 26
    iput-object p2, p0, Lo/ʋ;->ly:Lo/ﺭ;

    .line 27
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/ʋ;->lx:Lo/ﺭ;

    invoke-interface {v0}, Lo/ﺭ;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lo/ڔ;II)Lo/ڔ;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0694<Lo/\u0138;>;II)Lo/\u0694<Lo/\u0138;>;"
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Lo/ڔ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ĸ;

    invoke-virtual {v0}, Lo/ĸ;->ԇ()Lo/ڔ;

    move-result-object v1

    .line 32
    invoke-interface {p1}, Lo/ڔ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ĸ;

    invoke-virtual {v0}, Lo/ĸ;->ה()Lo/ڔ;

    move-result-object v2

    .line 33
    if-eqz v1, :cond_1

    iget-object v0, p0, Lo/ʋ;->lx:Lo/ﺭ;

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lo/ʋ;->lx:Lo/ﺭ;

    invoke-interface {v0, v1, p2, p3}, Lo/ﺭ;->ˊ(Lo/ڔ;II)Lo/ڔ;

    move-result-object v3

    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    new-instance v4, Lo/ĸ;

    invoke-interface {p1}, Lo/ڔ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ĸ;

    invoke-virtual {v0}, Lo/ĸ;->ה()Lo/ڔ;

    move-result-object v0

    invoke-direct {v4, v3, v0}, Lo/ĸ;-><init>(Lo/ڔ;Lo/ڔ;)V

    .line 37
    new-instance v0, Lo/ř;

    invoke-direct {v0, v4}, Lo/ř;-><init>(Lo/ĸ;)V

    return-object v0

    .line 39
    :cond_0
    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    iget-object v0, p0, Lo/ʋ;->ly:Lo/ﺭ;

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lo/ʋ;->ly:Lo/ﺭ;

    invoke-interface {v0, v2, p2, p3}, Lo/ﺭ;->ˊ(Lo/ڔ;II)Lo/ڔ;

    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 42
    new-instance v4, Lo/ĸ;

    invoke-interface {p1}, Lo/ڔ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ĸ;

    invoke-virtual {v0}, Lo/ĸ;->ԇ()Lo/ڔ;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lo/ĸ;-><init>(Lo/ڔ;Lo/ڔ;)V

    .line 43
    new-instance v0, Lo/ř;

    invoke-direct {v0, v4}, Lo/ř;-><init>(Lo/ĸ;)V

    return-object v0

    .line 46
    :cond_2
    :goto_0
    return-object p1
.end method
