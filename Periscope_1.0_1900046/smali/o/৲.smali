.class public Lo/৲;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/৲$ˋ;,
        Lo/৲$ˊ;,
        Lo/৲$if;
    }
.end annotation


# static fields
.field static final ᴗ:Lo/৲$if;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 89
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    const/16 v0, 0x11

    if-lt v1, v0, :cond_0

    .line 91
    new-instance v0, Lo/৲$ˋ;

    invoke-direct {v0}, Lo/৲$ˋ;-><init>()V

    sput-object v0, Lo/৲;->ᴗ:Lo/৲$if;

    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Lo/৲$ˊ;

    invoke-direct {v0}, Lo/৲$ˊ;-><init>()V

    sput-object v0, Lo/৲;->ᴗ:Lo/৲$if;

    .line 95
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static getAbsoluteGravity(II)I
    .locals 1

    .line 201
    sget-object v0, Lo/৲;->ᴗ:Lo/৲$if;

    invoke-interface {v0, p0, p1}, Lo/৲$if;->getAbsoluteGravity(II)I

    move-result v0

    return v0
.end method
