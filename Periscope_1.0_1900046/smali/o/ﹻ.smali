.class public Lo/ﹻ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ﹻ$ˊ;,
        Lo/ﹻ$if;,
        Lo/ﹻ$ˋ;
    }
.end annotation


# static fields
.field static final ὶ:Lo/ﹻ$ˋ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 68
    new-instance v0, Lo/ﹻ$ˊ;

    invoke-direct {v0}, Lo/ﹻ$ˊ;-><init>()V

    sput-object v0, Lo/ﹻ;->ὶ:Lo/ﹻ$ˋ;

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Lo/ﹻ$if;

    invoke-direct {v0}, Lo/ﹻ$if;-><init>()V

    sput-object v0, Lo/ﹻ;->ὶ:Lo/ﹻ$ˋ;

    .line 72
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static ˊ(Landroid/view/VelocityTracker;I)F
    .locals 1

    .line 82
    sget-object v0, Lo/ﹻ;->ὶ:Lo/ﹻ$ˋ;

    invoke-interface {v0, p0, p1}, Lo/ﹻ$ˋ;->ˊ(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method public static ˋ(Landroid/view/VelocityTracker;I)F
    .locals 1

    .line 91
    sget-object v0, Lo/ﹻ;->ὶ:Lo/ﹻ$ˋ;

    invoke-interface {v0, p0, p1}, Lo/ﹻ$ˋ;->ˋ(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
