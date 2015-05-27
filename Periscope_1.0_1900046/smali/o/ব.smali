.class public Lo/ব;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ব$if;
    }
.end annotation


# instance fields
.field public final height:I

.field public final id:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field public final tH:I

.field public final tI:F

.field public final tJ:I

.field public final tK:I

.field public final tL:Ljava/lang/String;

.field public final tM:Ljava/lang/String;

.field public final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-static {p1}, Lo/ړ;->יּ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lo/ব;->id:Ljava/lang/String;

    .line 143
    iput-object p2, p0, Lo/ব;->mimeType:Ljava/lang/String;

    .line 144
    iput p3, p0, Lo/ব;->width:I

    .line 145
    iput p4, p0, Lo/ব;->height:I

    .line 146
    iput p5, p0, Lo/ব;->tI:F

    .line 147
    iput p6, p0, Lo/ব;->tJ:I

    .line 148
    iput p7, p0, Lo/ব;->tK:I

    .line 149
    iput p8, p0, Lo/ব;->tH:I

    .line 150
    iput-object p9, p0, Lo/ব;->tM:Ljava/lang/String;

    .line 151
    iput-object p10, p0, Lo/ব;->tL:Ljava/lang/String;

    .line 152
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 164
    if-ne p0, p1, :cond_0

    .line 165
    const/4 v0, 0x1

    return v0

    .line 167
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 168
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 170
    :cond_2
    move-object v0, p1

    check-cast v0, Lo/ব;

    move-object v2, v0

    .line 171
    iget-object v0, v2, Lo/ব;->id:Ljava/lang/String;

    iget-object v1, p0, Lo/ব;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 156
    iget-object v0, p0, Lo/ব;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
