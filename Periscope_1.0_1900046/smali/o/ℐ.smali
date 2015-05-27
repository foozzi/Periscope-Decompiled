.class public Lo/ℐ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˋ(Landroid/widget/ImageView;Ljava/lang/Class;)Lo/ﭩ;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:Ljava/lang/Object;>(Landroid/widget/ImageView;Ljava/lang/Class<TZ;>;)Lo/\ufb69<TZ;>;"
        }
    .end annotation

    .line 17
    const-class v0, Lo/לּ;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Lo/ἵ;

    invoke-direct {v0, p1}, Lo/ἵ;-><init>(Landroid/widget/ImageView;)V

    return-object v0

    .line 19
    :cond_0
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    new-instance v0, Lo/ἳ;

    invoke-direct {v0, p1}, Lo/ἳ;-><init>(Landroid/widget/ImageView;)V

    return-object v0

    .line 21
    :cond_1
    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    new-instance v0, Lo/ἴ;

    invoke-direct {v0, p1}, Lo/ἴ;-><init>(Landroid/widget/ImageView;)V

    return-object v0

    .line 24
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", try .as*(Class).transcode(ResourceTranscoder)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
