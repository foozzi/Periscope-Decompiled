.class public Lo/ᴰ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᓳ$if;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᴰ$if;
    }
.end annotation


# instance fields
.field private final iV:I

.field private final iW:Lo/ᴰ$if;


# direct methods
.method public constructor <init>(Lo/ᴰ$if;I)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p2, p0, Lo/ᴰ;->iV:I

    .line 51
    iput-object p1, p0, Lo/ᴰ;->iW:Lo/ᴰ$if;

    .line 52
    return-void
.end method


# virtual methods
.method public ᵐ()Lo/ᓳ;
    .locals 2

    .line 56
    iget-object v0, p0, Lo/ᴰ;->iW:Lo/ᴰ$if;

    invoke-interface {v0}, Lo/ᴰ$if;->ᵝ()Ljava/io/File;

    move-result-object v1

    .line 58
    if-nez v1, :cond_0

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_2
    iget v0, p0, Lo/ᴰ;->iV:I

    invoke-static {v1, v0}, Lo/ᴻ;->ˊ(Ljava/io/File;I)Lo/ᓳ;

    move-result-object v0

    return-object v0
.end method
