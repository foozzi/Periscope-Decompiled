.class public Lo/ᒻ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᒻ$ˋ;,
        Lo/ᒻ$ˊ;,
        Lo/ᒻ$if;,
        Lo/ᒻ$ˎ;
    }
.end annotation


# static fields
.field static final ᴴ:Lo/ᒻ$ˎ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 167
    new-instance v0, Lo/ᒻ$ˋ;

    invoke-direct {v0}, Lo/ᒻ$ˋ;-><init>()V

    sput-object v0, Lo/ᒻ;->ᴴ:Lo/ᒻ$ˎ;

    goto :goto_0

    .line 169
    :cond_0
    new-instance v0, Lo/ᒻ$if;

    invoke-direct {v0}, Lo/ᒻ$if;-><init>()V

    sput-object v0, Lo/ᒻ;->ᴴ:Lo/ᒻ$ˎ;

    .line 171
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    return-void
.end method

.method public static ˊ(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 192
    sget-object v0, Lo/ᒻ;->ᴴ:Lo/ᒻ$ˎ;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1}, Lo/ᒻ$ˎ;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method

.method public static ˊ(Landroid/view/KeyEvent;I)Z
    .locals 2

    .line 188
    sget-object v0, Lo/ᒻ;->ᴴ:Lo/ᒻ$ˎ;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lo/ᒻ$ˎ;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method
