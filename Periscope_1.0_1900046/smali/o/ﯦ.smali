.class public Lo/ﯦ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ﯦ$ˊ;,
        Lo/ﯦ$if;,
        Lo/ﯦ$ˋ;,
        Lo/ﯦ$ˎ;
    }
.end annotation


# static fields
.field private static final ɻ:Lo/ﯦ$ˎ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 99
    new-instance v0, Lo/ﯦ$ˊ;

    invoke-direct {v0}, Lo/ﯦ$ˊ;-><init>()V

    sput-object v0, Lo/ﯦ;->ɻ:Lo/ﯦ$ˎ;

    goto :goto_0

    .line 100
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 101
    new-instance v0, Lo/ﯦ$if;

    invoke-direct {v0}, Lo/ﯦ$if;-><init>()V

    sput-object v0, Lo/ﯦ;->ɻ:Lo/ﯦ$ˎ;

    goto :goto_0

    .line 103
    :cond_1
    new-instance v0, Lo/ﯦ$ˋ;

    invoke-direct {v0}, Lo/ﯦ$ˋ;-><init>()V

    sput-object v0, Lo/ﯦ;->ɻ:Lo/ﯦ$ˎ;

    .line 105
    :goto_0
    return-void
.end method

.method public static ˊ(Landroid/view/accessibility/AccessibilityEvent;)Lo/ז;
    .locals 1

    .line 284
    new-instance v0, Lo/ז;

    invoke-direct {v0, p0}, Lo/ז;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
