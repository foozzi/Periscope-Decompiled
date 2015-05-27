.class public Lo/yz;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final bqX:Lo/zc;


# direct methods
.method private constructor <init>(Z)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    if-eqz p1, :cond_0

    .line 12
    new-instance v0, Lo/zc;

    invoke-direct {v0}, Lo/zc;-><init>()V

    iput-object v0, p0, Lo/yz;->bqX:Lo/zc;

    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lo/yz;->bqX:Lo/zc;

    .line 16
    :goto_0
    return-void
.end method

.method public static ᑉ(Z)Lo/yz;
    .locals 1

    .line 19
    new-instance v0, Lo/yz;

    invoke-direct {v0, p0}, Lo/yz;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public kill()V
    .locals 1

    .line 72
    iget-object v0, p0, Lo/yz;->bqX:Lo/zc;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lo/yz;->bqX:Lo/zc;

    invoke-virtual {v0}, Lo/zc;->kill()V

    .line 75
    :cond_0
    return-void
.end method

.method public ʼ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-static {p1, p2, p3}, Lo/abx;->ʼ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public ˊ(Ljava/lang/String;Ljava/lang/String;Lo/acu;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 5

    .line 36
    invoke-static/range {p1 .. p10}, Lo/abx;->ˊ(Ljava/lang/String;Ljava/lang/String;Lo/acu;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    iget-object v0, p0, Lo/yz;->bqX:Lo/zc;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lo/yz;->bqX:Lo/zc;

    move-object/from16 v1, p11

    move-object/from16 v2, p12

    move-object/from16 v3, p13

    move-object/from16 v4, p14

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/zc;->ˊ(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method public ˊ(Ljava/lang/String;Lo/ant;)V
    .locals 1

    .line 52
    invoke-static {p1, p2}, Lo/abx;->ˋ(Ljava/lang/String;Lo/ant;)V

    .line 54
    iget-object v0, p0, Lo/yz;->bqX:Lo/zc;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lo/yz;->bqX:Lo/zc;

    invoke-virtual {v0, p2}, Lo/zc;->ˋ(Lo/ant;)V

    .line 57
    :cond_0
    return-void
.end method

.method public ˎ(Ljava/lang/String;J)V
    .locals 1

    .line 45
    invoke-static {p1, p2, p3}, Lo/abx;->ˎ(Ljava/lang/String;J)V

    .line 46
    iget-object v0, p0, Lo/yz;->bqX:Lo/zc;

    .line 49
    return-void
.end method

.method public ᐩ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-static {p1}, Lo/abx;->ﻴ(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lo/yz;->bqX:Lo/zc;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lo/yz;->bqX:Lo/zc;

    invoke-virtual {v0, p2}, Lo/zc;->ḯ(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method

.method public ᵡ(Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-static {p1}, Lo/abx;->ᵡ(Ljava/lang/String;)V

    .line 69
    return-void
.end method
