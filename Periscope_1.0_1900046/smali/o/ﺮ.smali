.class Lo/ﺮ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᵨ$if;


# instance fields
.field private final eD:Lo/ი;


# direct methods
.method public constructor <init>(Lo/ი;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lo/ﺮ;->eD:Lo/ი;

    .line 14
    return-void
.end method


# virtual methods
.method public ˊ(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/ﺮ;->eD:Lo/ი;

    invoke-interface {v0, p1, p2, p3}, Lo/ი;->ʽ(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public ˋ(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lo/ﺮ;->eD:Lo/ი;

    invoke-interface {v0, p1}, Lo/ი;->ʽ(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 26
    :cond_0
    return-void
.end method
