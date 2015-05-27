.class public Lo/ᕽ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᕽ$ˋ;,
        Lo/ᕽ$ˊ;,
        Lo/ᕽ$if;
    }
.end annotation


# static fields
.field static final ḷ:Lo/ᕽ$if;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 127
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 128
    const/16 v0, 0x11

    if-lt v1, v0, :cond_0

    .line 129
    new-instance v0, Lo/ᕽ$ˋ;

    invoke-direct {v0}, Lo/ᕽ$ˋ;-><init>()V

    sput-object v0, Lo/ᕽ;->ḷ:Lo/ᕽ$if;

    goto :goto_0

    .line 131
    :cond_0
    new-instance v0, Lo/ᕽ$ˊ;

    invoke-direct {v0}, Lo/ᕽ$ˊ;-><init>()V

    sput-object v0, Lo/ᕽ;->ḷ:Lo/ᕽ$if;

    .line 133
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static ˊ(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1

    .line 147
    sget-object v0, Lo/ᕽ;->ḷ:Lo/ᕽ$if;

    invoke-interface {v0, p0}, Lo/ᕽ$if;->ˊ(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    return v0
.end method

.method public static ˋ(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 1

    .line 162
    sget-object v0, Lo/ᕽ;->ḷ:Lo/ᕽ$if;

    invoke-interface {v0, p0}, Lo/ᕽ$if;->ˋ(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    return v0
.end method
