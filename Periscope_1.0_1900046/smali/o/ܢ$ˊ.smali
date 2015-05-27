.class Lo/ܢ$ˊ;
.super Lo/ა;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ܢ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ca"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\u10d0<Lo/\u0722$if;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lo/ა;-><init>()V

    return-void
.end method


# virtual methods
.method public ʼ(IILandroid/graphics/Bitmap$Config;)Lo/ܢ$if;
    .locals 2

    .line 63
    invoke-virtual {p0}, Lo/ܢ$ˊ;->ᙇ()Lo/ᒧ;

    move-result-object v0

    check-cast v0, Lo/ܢ$if;

    move-object v1, v0

    .line 64
    invoke-virtual {v1, p1, p2, p3}, Lo/ܢ$if;->ʻ(IILandroid/graphics/Bitmap$Config;)V

    .line 65
    return-object v1
.end method

.method protected ᖟ()Lo/ܢ$if;
    .locals 1

    .line 70
    new-instance v0, Lo/ܢ$if;

    invoke-direct {v0, p0}, Lo/ܢ$if;-><init>(Lo/ܢ$ˊ;)V

    return-object v0
.end method

.method protected synthetic ᘇ()Lo/ᒧ;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lo/ܢ$ˊ;->ᖟ()Lo/ܢ$if;

    move-result-object v0

    return-object v0
.end method
