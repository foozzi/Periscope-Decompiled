.class public Lo/ᴊ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᴊ$ˊ;,
        Lo/ᴊ$if;,
        Lo/ᴊ$ˋ;
    }
.end annotation


# static fields
.field static final 〳:Lo/ᴊ$ˋ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 64
    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    .line 65
    new-instance v0, Lo/ᴊ$ˊ;

    invoke-direct {v0}, Lo/ᴊ$ˊ;-><init>()V

    sput-object v0, Lo/ᴊ;->〳:Lo/ᴊ$ˋ;

    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Lo/ᴊ$if;

    invoke-direct {v0}, Lo/ᴊ$if;-><init>()V

    sput-object v0, Lo/ᴊ;->〳:Lo/ᴊ$ˋ;

    .line 69
    :goto_0
    return-void
.end method

.method public static ˊ(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .locals 6

    .line 93
    sget-object v0, Lo/ᴊ;->〳:Lo/ᴊ$ˋ;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lo/ᴊ$ˋ;->ˊ(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 94
    return-void
.end method
