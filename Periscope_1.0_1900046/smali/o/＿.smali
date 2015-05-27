.class public Lo/＿;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/＿$ˋ;,
        Lo/＿$ˊ;,
        Lo/＿$ˎ;,
        Lo/＿$if;
    }
.end annotation


# static fields
.field private static final ʕ:Lo/＿$if;


# instance fields
.field private final ʖ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 140
    new-instance v0, Lo/＿$ˋ;

    invoke-direct {v0}, Lo/＿$ˋ;-><init>()V

    sput-object v0, Lo/＿;->ʕ:Lo/＿$if;

    goto :goto_0

    .line 141
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 142
    new-instance v0, Lo/＿$ˊ;

    invoke-direct {v0}, Lo/＿$ˊ;-><init>()V

    sput-object v0, Lo/＿;->ʕ:Lo/＿$if;

    goto :goto_0

    .line 144
    :cond_1
    new-instance v0, Lo/＿$ˎ;

    invoke-direct {v0}, Lo/＿$ˎ;-><init>()V

    sput-object v0, Lo/＿;->ʕ:Lo/＿$if;

    .line 146
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    sget-object v0, Lo/＿;->ʕ:Lo/＿$if;

    invoke-interface {v0, p0}, Lo/＿$if;->ˊ(Lo/＿;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/＿;->ʖ:Ljava/lang/Object;

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lo/＿;->ʖ:Ljava/lang/Object;

    .line 163
    return-void
.end method


# virtual methods
.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;I)Ljava/util/List<Lo/\ufbe9;>;"
        }
    .end annotation

    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public ו()Ljava/lang/Object;
    .locals 1

    .line 169
    iget-object v0, p0, Lo/＿;->ʖ:Ljava/lang/Object;

    return-object v0
.end method

.method public ٴ(I)Lo/ﯩ;
    .locals 1

    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public ᴵ(I)Lo/ﯩ;
    .locals 1

    .line 246
    const/4 v0, 0x0

    return-object v0
.end method
