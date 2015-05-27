.class public abstract Lo/ⁱ$con;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ⁱ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "con"
.end annotation


# instance fields
.field د:Lo/ⁱ$ˎ;

.field ہ:Ljava/lang/CharSequence;

.field ܝ:Ljava/lang/CharSequence;

.field า:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ⁱ$con;->า:Z

    return-void
.end method


# virtual methods
.method public ˋ(Lo/ⁱ$ˎ;)V
    .locals 1

    .line 1558
    iget-object v0, p0, Lo/ⁱ$con;->د:Lo/ⁱ$ˎ;

    if-eq v0, p1, :cond_0

    .line 1559
    iput-object p1, p0, Lo/ⁱ$con;->د:Lo/ⁱ$ˎ;

    .line 1560
    iget-object v0, p0, Lo/ⁱ$con;->د:Lo/ⁱ$ˎ;

    if-eqz v0, :cond_0

    .line 1561
    iget-object v0, p0, Lo/ⁱ$con;->د:Lo/ⁱ$ˎ;

    invoke-virtual {v0, p0}, Lo/ⁱ$ˎ;->ˊ(Lo/ⁱ$con;)Lo/ⁱ$ˎ;

    .line 1564
    :cond_0
    return-void
.end method
