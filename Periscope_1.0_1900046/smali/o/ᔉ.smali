.class public Lo/ᔉ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᔉ$ˎ;,
        Lo/ᔉ$ˋ;,
        Lo/ᔉ$ˊ;,
        Lo/ᔉ$if;
    }
.end annotation


# static fields
.field static final ᴿ:Lo/ᔉ$if;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 57
    new-instance v0, Lo/ᔉ$ˎ;

    invoke-direct {v0}, Lo/ᔉ$ˎ;-><init>()V

    sput-object v0, Lo/ᔉ;->ᴿ:Lo/ᔉ$if;

    goto :goto_0

    .line 58
    :cond_0
    const/16 v0, 0xb

    if-lt v1, v0, :cond_1

    .line 59
    new-instance v0, Lo/ᔉ$ˋ;

    invoke-direct {v0}, Lo/ᔉ$ˋ;-><init>()V

    sput-object v0, Lo/ᔉ;->ᴿ:Lo/ᔉ$if;

    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Lo/ᔉ$ˊ;

    invoke-direct {v0}, Lo/ᔉ$ˊ;-><init>()V

    sput-object v0, Lo/ᔉ;->ᴿ:Lo/ᔉ$if;

    .line 63
    :goto_0
    return-void
.end method

.method public static ˊ(Landroid/view/LayoutInflater;Lo/ᕑ;)V
    .locals 1

    .line 79
    sget-object v0, Lo/ᔉ;->ᴿ:Lo/ᔉ$if;

    invoke-interface {v0, p0, p1}, Lo/ᔉ$if;->ˊ(Landroid/view/LayoutInflater;Lo/ᕑ;)V

    .line 80
    return-void
.end method
