.class public Lo/ɫ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﺪ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\ufeaa<Lo/\u0138;>;"
    }
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private final lu:Lo/ﺪ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufeaa<Landroid/graphics/Bitmap;>;"
        }
    .end annotation
.end field

.field private final lv:Lo/ﺪ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufeaa<Lo/\ufee0;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ﺪ;Lo/ﺪ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufeaa<Landroid/graphics/Bitmap;>;Lo/\ufeaa<Lo/\ufee0;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lo/ɫ;->lu:Lo/ﺪ;

    .line 23
    iput-object p2, p0, Lo/ɫ;->lv:Lo/ﺪ;

    .line 24
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .line 40
    iget-object v0, p0, Lo/ɫ;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/ɫ;->lu:Lo/ﺪ;

    invoke-interface {v1}, Lo/ﺪ;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ɫ;->lv:Lo/ﺪ;

    invoke-interface {v1}, Lo/ﺪ;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ɫ;->id:Ljava/lang/String;

    .line 43
    :cond_0
    iget-object v0, p0, Lo/ɫ;->id:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic ˊ(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1

    .line 15
    move-object v0, p1

    check-cast v0, Lo/ڔ;

    invoke-virtual {p0, v0, p2}, Lo/ɫ;->ˊ(Lo/ڔ;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public ˊ(Lo/ڔ;Ljava/io/OutputStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0694<Lo/\u0138;>;Ljava/io/OutputStream;)Z"
        }
    .end annotation

    .line 28
    invoke-interface {p1}, Lo/ڔ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ĸ;

    move-object v2, v0

    .line 29
    invoke-virtual {v2}, Lo/ĸ;->ԇ()Lo/ڔ;

    move-result-object v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    iget-object v0, p0, Lo/ɫ;->lu:Lo/ﺪ;

    invoke-interface {v0, v3, p2}, Lo/ﺪ;->ˊ(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v0

    return v0

    .line 34
    :cond_0
    iget-object v0, p0, Lo/ɫ;->lv:Lo/ﺪ;

    invoke-virtual {v2}, Lo/ĸ;->ה()Lo/ڔ;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lo/ﺪ;->ˊ(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method
