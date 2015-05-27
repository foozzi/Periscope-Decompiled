.class Lo/ᒪ$ˊ;
.super Lo/ა;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᒪ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ca"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\u10d0<Lo/\u14aa$if;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Lo/ა;-><init>()V

    return-void
.end method


# virtual methods
.method public ˏ(ILandroid/graphics/Bitmap$Config;)Lo/ᒪ$if;
    .locals 2

    .line 160
    invoke-virtual {p0}, Lo/ᒪ$ˊ;->ᙇ()Lo/ᒧ;

    move-result-object v0

    check-cast v0, Lo/ᒪ$if;

    move-object v1, v0

    .line 161
    invoke-virtual {v1, p1, p2}, Lo/ᒪ$if;->ˎ(ILandroid/graphics/Bitmap$Config;)V

    .line 162
    return-object v1
.end method

.method protected synthetic ᘇ()Lo/ᒧ;
    .locals 1

    .line 157
    invoke-virtual {p0}, Lo/ᒪ$ˊ;->ᵍ()Lo/ᒪ$if;

    move-result-object v0

    return-object v0
.end method

.method protected ᵍ()Lo/ᒪ$if;
    .locals 1

    .line 167
    new-instance v0, Lo/ᒪ$if;

    invoke-direct {v0, p0}, Lo/ᒪ$if;-><init>(Lo/ᒪ$ˊ;)V

    return-object v0
.end method
