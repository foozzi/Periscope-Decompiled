.class public Lo/ᵄ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᵄ$ˋ;,
        Lo/ᵄ$ˊ;,
        Lo/ᵄ$if;,
        Lo/ᵄ$ˏ;,
        Lo/ᵄ$ˎ;
    }
.end annotation


# static fields
.field static final ṙ:Lo/ᵄ$ˎ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 247
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 248
    const/16 v0, 0xe

    if-lt v1, v0, :cond_0

    .line 249
    new-instance v0, Lo/ᵄ$ˋ;

    invoke-direct {v0}, Lo/ᵄ$ˋ;-><init>()V

    sput-object v0, Lo/ᵄ;->ṙ:Lo/ᵄ$ˎ;

    goto :goto_0

    .line 250
    :cond_0
    const/16 v0, 0xb

    if-lt v1, v0, :cond_1

    .line 251
    new-instance v0, Lo/ᵄ$ˊ;

    invoke-direct {v0}, Lo/ᵄ$ˊ;-><init>()V

    sput-object v0, Lo/ᵄ;->ṙ:Lo/ᵄ$ˎ;

    goto :goto_0

    .line 253
    :cond_1
    new-instance v0, Lo/ᵄ$if;

    invoke-direct {v0}, Lo/ᵄ$if;-><init>()V

    sput-object v0, Lo/ᵄ;->ṙ:Lo/ᵄ$ˎ;

    .line 255
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    return-void
.end method

.method public static ˎ(Landroid/view/MenuItem;)Z
    .locals 1

    .line 383
    instance-of v0, p0, Lo/ǃ;

    if-eqz v0, :cond_0

    .line 384
    move-object v0, p0

    check-cast v0, Lo/ǃ;

    invoke-interface {v0}, Lo/ǃ;->expandActionView()Z

    move-result v0

    return v0

    .line 386
    :cond_0
    sget-object v0, Lo/ᵄ;->ṙ:Lo/ᵄ$ˎ;

    invoke-interface {v0, p0}, Lo/ᵄ$ˎ;->ˎ(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
