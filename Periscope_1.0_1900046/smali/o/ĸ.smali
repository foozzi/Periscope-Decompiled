.class public Lo/ĸ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final ll:Lo/ڔ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u0694<Lo/\ufee0;>;"
        }
    .end annotation
.end field

.field private final lm:Lo/ڔ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u0694<Landroid/graphics/Bitmap;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ڔ;Lo/ڔ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0694<Landroid/graphics/Bitmap;>;Lo/\u0694<Lo/\ufee0;>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only contain either a bitmap resource or a gif resource, not both"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must contain either a bitmap resource or a gif resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    iput-object p1, p0, Lo/ĸ;->lm:Lo/ڔ;

    .line 24
    iput-object p2, p0, Lo/ĸ;->ll:Lo/ڔ;

    .line 25
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 31
    iget-object v0, p0, Lo/ĸ;->lm:Lo/ڔ;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lo/ĸ;->lm:Lo/ڔ;

    invoke-interface {v0}, Lo/ڔ;->getSize()I

    move-result v0

    return v0

    .line 34
    :cond_0
    iget-object v0, p0, Lo/ĸ;->ll:Lo/ڔ;

    invoke-interface {v0}, Lo/ڔ;->getSize()I

    move-result v0

    return v0
.end method

.method public ԇ()Lo/ڔ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\u0694<Landroid/graphics/Bitmap;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lo/ĸ;->lm:Lo/ڔ;

    return-object v0
.end method

.method public ה()Lo/ڔ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\u0694<Lo/\ufee0;>;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lo/ĸ;->ll:Lo/ڔ;

    return-object v0
.end method
