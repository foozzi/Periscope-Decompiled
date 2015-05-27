.class public final Lo/ব$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ব;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/util/Comparator<Lo/\u09ac;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 30
    move-object v0, p1

    check-cast v0, Lo/ব;

    move-object v1, p2

    check-cast v1, Lo/ব;

    invoke-virtual {p0, v0, v1}, Lo/ব$if;->ˊ(Lo/ব;Lo/ব;)I

    move-result v0

    return v0
.end method

.method public ˊ(Lo/ব;Lo/ব;)I
    .locals 2

    .line 34
    iget v0, p2, Lo/ব;->tH:I

    iget v1, p1, Lo/ব;->tH:I

    sub-int/2addr v0, v1

    return v0
.end method
