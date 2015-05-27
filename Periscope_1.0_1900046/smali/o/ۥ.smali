.class public Lo/ۥ;
.super Lo/ᐩ$if;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ۥ$ˊ;,
        Lo/ۥ$ˎ;,
        Lo/ۥ$ˋ;,
        Lo/ۥ$if;
    }
.end annotation


# static fields
.field private static final ﺒ:Lo/ۥ$if;

.field public static final ﺛ:Lo/ᐩ$if$if;


# instance fields
.field private final ᑋ:Landroid/os/Bundle;

.field private final ᴷ:Ljava/lang/String;

.field private final ᵏ:Ljava/lang/CharSequence;

.field private final ⅼ:[Ljava/lang/CharSequence;

.field private final ﭘ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 254
    new-instance v0, Lo/ۥ$ˊ;

    invoke-direct {v0}, Lo/ۥ$ˊ;-><init>()V

    sput-object v0, Lo/ۥ;->ﺒ:Lo/ۥ$if;

    goto :goto_0

    .line 255
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 256
    new-instance v0, Lo/ۥ$ˎ;

    invoke-direct {v0}, Lo/ۥ$ˎ;-><init>()V

    sput-object v0, Lo/ۥ;->ﺒ:Lo/ۥ$if;

    goto :goto_0

    .line 258
    :cond_1
    new-instance v0, Lo/ۥ$ˋ;

    invoke-direct {v0}, Lo/ۥ$ˋ;-><init>()V

    sput-object v0, Lo/ۥ;->ﺒ:Lo/ۥ$if;

    .line 263
    :goto_0
    new-instance v0, Lo/ᐠ;

    invoke-direct {v0}, Lo/ᐠ;-><init>()V

    sput-object v0, Lo/ۥ;->ﺛ:Lo/ᐩ$if$if;

    return-void
.end method


# virtual methods
.method public getAllowFreeFormInput()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lo/ۥ;->ﭘ:Z

    return v0
.end method

.method public getChoices()[Ljava/lang/CharSequence;
    .locals 1

    .line 71
    iget-object v0, p0, Lo/ۥ;->ⅼ:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 88
    iget-object v0, p0, Lo/ۥ;->ᑋ:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 64
    iget-object v0, p0, Lo/ۥ;->ᵏ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getResultKey()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lo/ۥ;->ᴷ:Ljava/lang/String;

    return-object v0
.end method
