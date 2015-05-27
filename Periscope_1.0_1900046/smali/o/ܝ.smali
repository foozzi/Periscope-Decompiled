.class public Lo/ܝ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ܝ$ˎ;,
        Lo/ܝ$ˊ;,
        Lo/ܝ$if;,
        Lo/ܝ$ˋ;
    }
.end annotation


# static fields
.field private static final ʌ:Lo/ܝ$ˋ;


# instance fields
.field private ʃ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 38
    new-instance v0, Lo/ܝ$ˎ;

    invoke-direct {v0}, Lo/ܝ$ˎ;-><init>()V

    sput-object v0, Lo/ܝ;->ʌ:Lo/ܝ$ˋ;

    goto :goto_0

    .line 39
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 40
    new-instance v0, Lo/ܝ$ˊ;

    invoke-direct {v0}, Lo/ܝ$ˊ;-><init>()V

    sput-object v0, Lo/ܝ;->ʌ:Lo/ܝ$ˋ;

    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Lo/ܝ$if;

    invoke-direct {v0}, Lo/ܝ$if;-><init>()V

    sput-object v0, Lo/ܝ;->ʌ:Lo/ܝ$ˋ;

    .line 44
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    sget-object v0, Lo/ܝ;->ʌ:Lo/ܝ$ˋ;

    invoke-interface {v0, p1}, Lo/ܝ$ˋ;->ˋ(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/ܝ;->ʃ:Ljava/lang/Object;

    .line 151
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 2

    .line 254
    sget-object v0, Lo/ܝ;->ʌ:Lo/ܝ$ˋ;

    iget-object v1, p0, Lo/ܝ;->ʃ:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lo/ܝ$ˋ;->ˊ(Ljava/lang/Object;Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 2

    .line 179
    sget-object v0, Lo/ܝ;->ʌ:Lo/ܝ$ˋ;

    iget-object v1, p0, Lo/ܝ;->ʃ:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lo/ܝ$ˋ;->ٴ(Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method public isFinished()Z
    .locals 2

    .line 171
    sget-object v0, Lo/ܝ;->ʌ:Lo/ܝ$ˋ;

    iget-object v1, p0, Lo/ܝ;->ʃ:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lo/ܝ$ˋ;->י(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setSize(II)V
    .locals 2

    .line 160
    sget-object v0, Lo/ܝ;->ʌ:Lo/ܝ$ˋ;

    iget-object v1, p0, Lo/ܝ;->ʃ:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lo/ܝ$ˋ;->ˊ(Ljava/lang/Object;II)V

    .line 161
    return-void
.end method

.method public ˇ(I)Z
    .locals 2

    .line 240
    sget-object v0, Lo/ܝ;->ʌ:Lo/ܝ$ˋ;

    iget-object v1, p0, Lo/ܝ;->ʃ:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lo/ܝ$ˋ;->ᐝ(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public ͺ(F)Z
    .locals 2

    .line 195
    sget-object v0, Lo/ܝ;->ʌ:Lo/ܝ$ˋ;

    iget-object v1, p0, Lo/ܝ;->ʃ:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lo/ܝ$ˋ;->ˊ(Ljava/lang/Object;F)Z

    move-result v0

    return v0
.end method

.method public ﯨ()Z
    .locals 2

    .line 225
    sget-object v0, Lo/ܝ;->ʌ:Lo/ܝ$ˋ;

    iget-object v1, p0, Lo/ܝ;->ʃ:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lo/ܝ$ˋ;->ᴵ(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
