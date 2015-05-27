.class public Lo/ᖟ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ڔ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u0694<Landroid/graphics/Bitmap;>;"
    }
.end annotation


# instance fields
.field private final eD:Lo/ი;

.field private final jU:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lo/ი;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bitmap must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    if-nez p2, :cond_1

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "BitmapPool must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    iput-object p1, p0, Lo/ᖟ;->jU:Landroid/graphics/Bitmap;

    .line 39
    iput-object p2, p0, Lo/ᖟ;->eD:Lo/ი;

    .line 40
    return-void
.end method

.method public static ˊ(Landroid/graphics/Bitmap;Lo/ი;)Lo/ᖟ;
    .locals 1

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    new-instance v0, Lo/ᖟ;

    invoke-direct {v0, p0, p1}, Lo/ᖟ;-><init>(Landroid/graphics/Bitmap;Lo/ი;)V

    return-object v0
.end method


# virtual methods
.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lo/ᖟ;->ﺮ()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 49
    iget-object v0, p0, Lo/ᖟ;->jU:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lo/ﾕ;->ˉ(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 2

    .line 54
    iget-object v0, p0, Lo/ᖟ;->eD:Lo/ი;

    iget-object v1, p0, Lo/ᖟ;->jU:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lo/ი;->ʽ(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lo/ᖟ;->jU:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 57
    :cond_0
    return-void
.end method

.method public ﺮ()Landroid/graphics/Bitmap;
    .locals 1

    .line 44
    iget-object v0, p0, Lo/ᖟ;->jU:Landroid/graphics/Bitmap;

    return-object v0
.end method
