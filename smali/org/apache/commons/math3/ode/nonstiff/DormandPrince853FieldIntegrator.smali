.class public Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;
.source "DormandPrince853FieldIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement",
        "<TT;>;>",
        "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Dormand-Prince 8 (5, 3)"


# instance fields
.field private final e1_01:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e1_06:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e1_07:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e1_08:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e1_09:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e1_10:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e1_11:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e1_12:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e2_01:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e2_06:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e2_07:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e2_08:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e2_09:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e2_10:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e2_11:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e2_12:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;DDDD)V
    .locals 12
    .param p2, "minStep"    # D
    .param p4, "maxStep"    # D
    .param p6, "scalAbsoluteTolerance"    # D
    .param p8, "scalRelativeTolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;DDDD)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    const-string v2, "Dormand-Prince 8 (5, 3)"

    const/16 v3, 0xc

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IDDDD)V

    .line 139
    const-wide v0, 0x419badb5bc000000L    # 1.16092271E8

    const-wide v2, 0x42007b4700000000L    # 8.84846592E9

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e1_01:Lorg/apache/commons/math3/RealFieldElement;

    .line 140
    const-wide v0, -0x3ec370e100000000L    # -1871647.0

    const-wide v2, 0x41374f8000000000L    # 1527680.0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e1_06:Lorg/apache/commons/math3/RealFieldElement;

    .line 141
    const-wide v0, -0x3e6f5bc36c000000L    # -6.9799717E7

    const-wide v2, 0x41a0c8ae78000000L    # 1.4079366E8

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e1_07:Lorg/apache/commons/math3/RealFieldElement;

    .line 142
    const-wide v0, 0x4271e6b83db9b000L    # 1.230164450203E12

    const-wide v2, 0x426582d40c000000L    # 7.39113984E11

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e1_08:Lorg/apache/commons/math3/RealFieldElement;

    .line 143
    const-wide v0, -0x3ce3d9d73b83dcacL    # -1.980813971228885E15

    const-wide v2, 0x4334166cc96ea800L    # 5.654156025964544E15

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e1_09:Lorg/apache/commons/math3/RealFieldElement;

    .line 144
    const-wide v0, 0x41bbafb845000000L    # 4.64500805E8

    const-wide v2, 0x41d4b65600000000L    # 1.389975552E9

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e1_10:Lorg/apache/commons/math3/RealFieldElement;

    .line 145
    const-wide v0, 0x427761aa7ee0d000L    # 1.606764981773E12

    const-wide v2, 0x42b1d685a1f00000L    # 1.9613062656E13

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e1_11:Lorg/apache/commons/math3/RealFieldElement;

    .line 146
    const-wide v0, -0x3eff2a5800000000L    # -137909.0

    const-wide v2, 0x4157886000000000L    # 6168960.0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e1_12:Lorg/apache/commons/math3/RealFieldElement;

    .line 147
    const-wide v0, -0x3ee9c14400000000L    # -364463.0

    const-wide v2, 0x413d4cf000000000L    # 1920240.0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e2_01:Lorg/apache/commons/math3/RealFieldElement;

    .line 148
    const-wide v0, 0x4149ef4f80000000L    # 3399327.0

    const-wide v2, 0x41274f8000000000L    # 763840.0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e2_06:Lorg/apache/commons/math3/RealFieldElement;

    .line 149
    const-wide v0, 0x418fbf4000000000L    # 6.6578432E7

    const-wide v2, 0x4180c8ae78000000L    # 3.5198415E7

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e2_07:Lorg/apache/commons/math3/RealFieldElement;

    .line 150
    const-wide v0, -0x3e270ac0cf400000L    # -1.674902723E9

    const-wide v2, 0x41b1357670000000L    # 2.887164E8

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e2_08:Lorg/apache/commons/math3/RealFieldElement;

    .line 151
    const-wide v0, -0x3d2f04c698ed3440L    # -7.4684743568175E13

    const-wide v2, 0x42e4166cc96ea800L    # 1.76692375811392E14

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e2_09:Lorg/apache/commons/math3/RealFieldElement;

    .line 152
    const-wide v0, -0x3ed996b200000000L    # -734375.0

    const-wide v2, 0x4152693000000000L    # 4826304.0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e2_10:Lorg/apache/commons/math3/RealFieldElement;

    .line 153
    const-wide v0, 0x41a46f2882000000L    # 1.71414593E8

    const-wide v2, 0x41c95e9bec000000L    # 8.512614E8

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e2_11:Lorg/apache/commons/math3/RealFieldElement;

    .line 154
    const-wide v0, 0x40f10ed000000000L    # 69869.0

    const-wide v2, 0x4147886000000000L    # 3084480.0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e2_12:Lorg/apache/commons/math3/RealFieldElement;

    .line 155
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;DD[D[D)V
    .locals 10
    .param p2, "minStep"    # D
    .param p4, "maxStep"    # D
    .param p6, "vecAbsoluteTolerance"    # [D
    .param p7, "vecRelativeTolerance"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field",
            "<TT;>;DD[D[D)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    const-string v2, "Dormand-Prince 8 (5, 3)"

    const/16 v3, 0xc

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IDD[D[D)V

    .line 175
    const-wide v0, 0x419badb5bc000000L    # 1.16092271E8

    const-wide v2, 0x42007b4700000000L    # 8.84846592E9

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e1_01:Lorg/apache/commons/math3/RealFieldElement;

    .line 176
    const-wide v0, -0x3ec370e100000000L    # -1871647.0

    const-wide v2, 0x41374f8000000000L    # 1527680.0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e1_06:Lorg/apache/commons/math3/RealFieldElement;

    .line 177
    const-wide v0, -0x3e6f5bc36c000000L    # -6.9799717E7

    const-wide v2, 0x41a0c8ae78000000L    # 1.4079366E8

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e1_07:Lorg/apache/commons/math3/RealFieldElement;

    .line 178
    const-wide v0, 0x4271e6b83db9b000L    # 1.230164450203E12

    const-wide v2, 0x426582d40c000000L    # 7.39113984E11

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e1_08:Lorg/apache/commons/math3/RealFieldElement;

    .line 179
    const-wide v0, -0x3ce3d9d73b83dcacL    # -1.980813971228885E15

    const-wide v2, 0x4334166cc96ea800L    # 5.654156025964544E15

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e1_09:Lorg/apache/commons/math3/RealFieldElement;

    .line 180
    const-wide v0, 0x41bbafb845000000L    # 4.64500805E8

    const-wide v2, 0x41d4b65600000000L    # 1.389975552E9

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e1_10:Lorg/apache/commons/math3/RealFieldElement;

    .line 181
    const-wide v0, 0x427761aa7ee0d000L    # 1.606764981773E12

    const-wide v2, 0x42b1d685a1f00000L    # 1.9613062656E13

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e1_11:Lorg/apache/commons/math3/RealFieldElement;

    .line 182
    const-wide v0, -0x3eff2a5800000000L    # -137909.0

    const-wide v2, 0x4157886000000000L    # 6168960.0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e1_12:Lorg/apache/commons/math3/RealFieldElement;

    .line 183
    const-wide v0, -0x3ee9c14400000000L    # -364463.0

    const-wide v2, 0x413d4cf000000000L    # 1920240.0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e2_01:Lorg/apache/commons/math3/RealFieldElement;

    .line 184
    const-wide v0, 0x4149ef4f80000000L    # 3399327.0

    const-wide v2, 0x41274f8000000000L    # 763840.0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e2_06:Lorg/apache/commons/math3/RealFieldElement;

    .line 185
    const-wide v0, 0x418fbf4000000000L    # 6.6578432E7

    const-wide v2, 0x4180c8ae78000000L    # 3.5198415E7

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e2_07:Lorg/apache/commons/math3/RealFieldElement;

    .line 186
    const-wide v0, -0x3e270ac0cf400000L    # -1.674902723E9

    const-wide v2, 0x41b1357670000000L    # 2.887164E8

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e2_08:Lorg/apache/commons/math3/RealFieldElement;

    .line 187
    const-wide v0, -0x3d2f04c698ed3440L    # -7.4684743568175E13

    const-wide v2, 0x42e4166cc96ea800L    # 1.76692375811392E14

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e2_09:Lorg/apache/commons/math3/RealFieldElement;

    .line 188
    const-wide v0, -0x3ed996b200000000L    # -734375.0

    const-wide v2, 0x4152693000000000L    # 4826304.0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e2_10:Lorg/apache/commons/math3/RealFieldElement;

    .line 189
    const-wide v0, 0x41a46f2882000000L    # 1.71414593E8

    const-wide v2, 0x41c95e9bec000000L    # 8.512614E8

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e2_11:Lorg/apache/commons/math3/RealFieldElement;

    .line 190
    const-wide v0, 0x40f10ed000000000L    # 69869.0

    const-wide v2, 0x4147886000000000L    # 3084480.0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e2_12:Lorg/apache/commons/math3/RealFieldElement;

    .line 191
    return-void
.end method


# virtual methods
.method protected createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;
    .locals 9
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[[TT;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative",
            "<TT;>;",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper",
            "<TT;>;)",
            "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator<TT;>;"
    .local p2, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p3, "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p4, "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v0
.end method

.method protected bridge synthetic createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator<TT;>;"
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldStepInterpolator;

    move-result-object v0

    return-object v0
.end method

.method protected estimateError([[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;[TT;[TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 414
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator<TT;>;"
    .local p1, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p2, "y0":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p3, "y1":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p4, "h":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p4 .. p4}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 415
    .local v3, "error1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p4 .. p4}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 417
    .local v4, "error2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    iget v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->mainSetDimension:I

    if-ge v5, v10, :cond_1

    .line 418
    const/4 v10, 0x0

    aget-object v10, p1, v10

    aget-object v10, v10, v5

    iget-object v11, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e1_01:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v11, 0x5

    aget-object v11, p1, v11

    aget-object v11, v11, v5

    iget-object v12, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e1_06:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v11, 0x6

    aget-object v11, p1, v11

    aget-object v11, v11, v5

    iget-object v12, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e1_07:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v11, 0x7

    aget-object v11, p1, v11

    aget-object v11, v11, v5

    iget-object v12, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e1_08:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v11, 0x8

    aget-object v11, p1, v11

    aget-object v11, v11, v5

    iget-object v12, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e1_09:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v11, 0x9

    aget-object v11, p1, v11

    aget-object v11, v11, v5

    iget-object v12, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e1_10:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v11, 0xa

    aget-object v11, p1, v11

    aget-object v11, v11, v5

    iget-object v12, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e1_11:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v11, 0xb

    aget-object v11, p1, v11

    aget-object v11, v11, v5

    iget-object v12, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e1_12:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 426
    .local v1, "errSum1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v10, 0x0

    aget-object v10, p1, v10

    aget-object v10, v10, v5

    iget-object v11, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e2_01:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v11, 0x5

    aget-object v11, p1, v11

    aget-object v11, v11, v5

    iget-object v12, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e2_06:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v11, 0x6

    aget-object v11, p1, v11

    aget-object v11, v11, v5

    iget-object v12, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e2_07:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v11, 0x7

    aget-object v11, p1, v11

    aget-object v11, v11, v5

    iget-object v12, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e2_08:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v11, 0x8

    aget-object v11, p1, v11

    aget-object v11, v11, v5

    iget-object v12, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e2_09:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v11, 0x9

    aget-object v11, p1, v11

    aget-object v11, v11, v5

    iget-object v12, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e2_10:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v11, 0xa

    aget-object v11, p1, v11

    aget-object v11, v11, v5

    iget-object v12, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e2_11:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v11, 0xb

    aget-object v11, p1, v11

    aget-object v11, v11, v5

    iget-object v12, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->e2_12:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 435
    .local v2, "errSum2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v10, p2, v5

    invoke-interface {v10}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v11, p3, v5

    invoke-interface {v11}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/MathUtils;->max(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    .line 436
    .local v9, "yScale":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->vecAbsoluteTolerance:[D

    if-nez v10, :cond_0

    iget-wide v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->scalRelativeTolerance:D

    invoke-interface {v9, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    iget-wide v12, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->scalAbsoluteTolerance:D

    invoke-interface {v10, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    move-object v8, v10

    .line 439
    .local v8, "tol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_1
    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 440
    .local v6, "ratio1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v6, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v3, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "error1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 441
    .restart local v3    # "error1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v2, v8}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 442
    .local v7, "ratio2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v7, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v4, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "error2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 417
    .restart local v4    # "error2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 436
    .end local v6    # "ratio1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v7    # "ratio2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v8    # "tol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_0
    iget-object v10, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->vecRelativeTolerance:[D

    aget-wide v10, v10, v5

    invoke-interface {v9, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v12, v11, v5

    invoke-interface {v10, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    move-object v8, v10

    goto :goto_1

    .line 445
    .end local v1    # "errSum1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v2    # "errSum2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v9    # "yScale":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_1
    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    invoke-interface {v4, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v3, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 446
    .local v0, "den":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_2

    .line 447
    invoke-interface/range {p4 .. p4}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "den":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 450
    .restart local v0    # "den":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_2
    invoke-interface/range {p4 .. p4}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    iget v11, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->mainSetDimension:I

    invoke-interface {v0, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    return-object v10
.end method

.method public getA()[[Lorg/apache/commons/math3/RealFieldElement;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator<TT;>;"
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x6

    const/4 v10, 0x1

    .line 222
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 224
    .local v2, "sqrt6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    const/16 v4, 0xf

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 225
    .local v0, "a":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 226
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v0, v1

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    :cond_0
    aget-object v4, v0, v12

    const-wide/high16 v6, -0x3fe8000000000000L    # -6.0

    invoke-interface {v2, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, -0x3faf200000000000L    # -67.5

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v12

    .line 231
    aget-object v4, v0, v10

    const-wide/high16 v6, -0x3fe8000000000000L    # -6.0

    invoke-interface {v2, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, -0x3f99800000000000L    # -180.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v12

    .line 232
    aget-object v4, v0, v10

    const-wide/high16 v6, -0x3fe8000000000000L    # -6.0

    invoke-interface {v2, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v6, -0x3fb2000000000000L    # -60.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v10

    .line 234
    aget-object v4, v0, v13

    const-wide/high16 v6, -0x3fe8000000000000L    # -6.0

    invoke-interface {v2, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v6, -0x3fa2000000000000L    # -120.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v12

    .line 235
    aget-object v4, v0, v13

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v10

    .line 236
    aget-object v4, v0, v13

    const-wide/high16 v6, -0x3fe8000000000000L    # -6.0

    invoke-interface {v2, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v6, -0x3fbc000000000000L    # -40.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v13

    .line 238
    aget-object v4, v0, v14

    const/16 v3, 0x6b

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x407ce00000000000L    # 462.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x40a7700000000000L    # 3000.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v12

    .line 239
    aget-object v4, v0, v14

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v10

    .line 240
    aget-object v4, v0, v14

    const/16 v3, 0xc5

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x4079200000000000L    # 402.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, -0x3f70c00000000000L    # -1000.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v13

    .line 241
    aget-object v4, v0, v14

    const/16 v3, 0x49

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v6, 0x4065000000000000L    # 168.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x4077700000000000L    # 375.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v14

    .line 243
    const/4 v3, 0x4

    aget-object v3, v0, v3

    const/16 v4, 0x1b

    invoke-virtual {p0, v10, v4}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v3, v12

    .line 244
    const/4 v3, 0x4

    aget-object v4, v0, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v10

    .line 245
    const/4 v3, 0x4

    aget-object v4, v0, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v13

    .line 246
    const/4 v3, 0x4

    aget-object v4, v0, v3

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    invoke-interface {v2, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v6, 0x405b000000000000L    # 108.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v14

    .line 247
    const/4 v3, 0x4

    aget-object v4, v0, v3

    const/4 v5, 0x4

    const-wide/high16 v6, -0x3fd0000000000000L    # -16.0

    invoke-interface {v2, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v6, -0x3fa5000000000000L    # -108.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v5

    .line 249
    const/4 v3, 0x5

    aget-object v3, v0, v3

    const/16 v4, 0x13

    const/16 v5, 0x200

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v3, v12

    .line 250
    const/4 v3, 0x5

    aget-object v4, v0, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v10

    .line 251
    const/4 v3, 0x5

    aget-object v4, v0, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v13

    .line 252
    const/4 v3, 0x5

    aget-object v4, v0, v3

    const/16 v3, 0x17

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x405d800000000000L    # 118.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v14

    .line 253
    const/4 v3, 0x5

    aget-object v4, v0, v3

    const/4 v5, 0x4

    const/16 v3, -0x17

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x405d800000000000L    # 118.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v5

    .line 254
    const/4 v3, 0x5

    aget-object v3, v0, v3

    const/4 v4, 0x5

    const/16 v5, -0x9

    const/16 v6, 0x200

    invoke-virtual {p0, v5, v6}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 256
    aget-object v3, v0, v11

    const/16 v4, 0x35cc

    const v5, 0x5aa5d

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v3, v12

    .line 257
    aget-object v4, v0, v11

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v10

    .line 258
    aget-object v4, v0, v11

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v13

    .line 259
    aget-object v4, v0, v11

    const/16 v3, 0x12b0

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x40e92b0000000000L    # 51544.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x4116a97400000000L    # 371293.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v14

    .line 260
    aget-object v4, v0, v11

    const/4 v5, 0x4

    const/16 v3, -0x12b0

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x40e92b0000000000L    # 51544.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x4116a97400000000L    # 371293.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v5

    .line 261
    aget-object v3, v0, v11

    const/4 v4, 0x5

    const/16 v5, -0x1638

    const v6, 0x5aa5d

    invoke-virtual {p0, v5, v6}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 262
    aget-object v3, v0, v11

    const/16 v4, 0xc00

    const v5, 0x5aa5d

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v3, v11

    .line 264
    const/4 v3, 0x7

    aget-object v3, v0, v3

    const-wide v4, 0x422b505bdf960000L    # 5.8656157643E10

    const-wide v6, 0x4235e1db05910000L    # 9.3983540625E10

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v3, v12

    .line 265
    const/4 v3, 0x7

    aget-object v4, v0, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v10

    .line 266
    const/4 v3, 0x7

    aget-object v4, v0, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v13

    .line 267
    const/4 v3, 0x7

    aget-object v4, v0, v3

    const-wide v6, -0x3dad717d000b4000L    # -3.18801444819E11

    invoke-interface {v2, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, -0x3d8cb866b2b38000L    # -1.324889724104E12

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x42623c3684a38000L    # 6.265569375E11

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v14

    .line 268
    const/4 v3, 0x7

    aget-object v4, v0, v3

    const/4 v5, 0x4

    const-wide v6, 0x42528e82fff4c000L    # 3.18801444819E11

    invoke-interface {v2, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, -0x3d8cb866b2b38000L    # -1.324889724104E12

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x42623c3684a38000L    # 6.265569375E11

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v5

    .line 269
    const/4 v3, 0x7

    aget-object v3, v0, v3

    const/4 v4, 0x5

    const-wide v6, 0x42365cb3bd680000L    # 9.6044563816E10

    const-wide v8, 0x41e9ef3c78600000L    # 3.480871875E9

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 270
    const/4 v3, 0x7

    aget-object v3, v0, v3

    const-wide v4, 0x4294ac321a540000L    # 5.682451879168E12

    const-wide v6, 0x42506964442cc000L    # 2.81950621875E11

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v3, v11

    .line 271
    const/4 v3, 0x7

    aget-object v3, v0, v3

    const/4 v4, 0x7

    const-wide v6, -0x3e5c50c3d4000000L    # -1.65125654E8

    const-wide v8, 0x414cf7c580000000L    # 3796875.0

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 273
    const/16 v3, 0x8

    aget-object v3, v0, v3

    const-wide v4, 0x4160fe8960000000L    # 8909899.0

    const-wide v6, 0x4171c9fc50000000L    # 1.8653125E7

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v3, v12

    .line 274
    const/16 v3, 0x8

    aget-object v4, v0, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v10

    .line 275
    const/16 v3, 0x8

    aget-object v4, v0, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v13

    .line 276
    const/16 v3, 0x8

    aget-object v4, v0, v3

    const-wide v6, -0x3ecea2d500000000L    # -1137963.0

    invoke-interface {v2, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, -0x3eaec09000000000L    # -4521408.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x4146694e00000000L    # 2937500.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v14

    .line 277
    const/16 v3, 0x8

    aget-object v4, v0, v3

    const/4 v5, 0x4

    const-wide v6, 0x41315d2b00000000L    # 1137963.0

    invoke-interface {v2, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, -0x3eaec09000000000L    # -4521408.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x4146694e00000000L    # 2937500.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v5

    .line 278
    const/16 v3, 0x8

    aget-object v3, v0, v3

    const/4 v4, 0x5

    const-wide v6, 0x41970bd898000000L    # 9.6663078E7

    const-wide v8, 0x41515e6940000000L    # 4553125.0

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 279
    const/16 v3, 0x8

    aget-object v3, v0, v3

    const-wide v4, 0x41df668080000000L    # 2.107245056E9

    const-wide v6, 0x41a070d9d2000000L    # 1.37915625E8

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v3, v11

    .line 280
    const/16 v3, 0x8

    aget-object v3, v0, v3

    const/4 v4, 0x7

    const-wide v6, -0x3e0db1f9ed000000L    # -4.913652016E9

    const-wide v8, 0x41a198ae3e000000L    # 1.47609375E8

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 281
    const/16 v3, 0x8

    aget-object v3, v0, v3

    const/16 v4, 0x8

    const-wide v6, -0x3e6d30ad08000000L    # -7.889427E7

    const-wide v8, 0x41ece96060a00000L    # 3.880452869E9

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 283
    const/16 v3, 0x9

    aget-object v3, v0, v3

    const-wide v4, -0x3decfff58dc80000L    # -2.0401265806E10

    const-wide v6, 0x4214464a30fc0000L    # 2.1769653311E10

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v3, v12

    .line 284
    const/16 v3, 0x9

    aget-object v4, v0, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v10

    .line 285
    const/16 v3, 0x9

    aget-object v4, v0, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v13

    .line 286
    const/16 v3, 0x9

    aget-object v4, v0, v3

    const-wide v6, 0x40f7076000000000L    # 94326.0

    invoke-interface {v2, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x41159ea000000000L    # 354216.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x40fb8cf000000000L    # 112847.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v14

    .line 287
    const/16 v3, 0x9

    aget-object v4, v0, v3

    const/4 v5, 0x4

    const-wide v6, -0x3f08f8a000000000L    # -94326.0

    invoke-interface {v2, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x41159ea000000000L    # 354216.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x40fb8cf000000000L    # 112847.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v5

    .line 288
    const/16 v3, 0x9

    aget-object v3, v0, v3

    const/4 v4, 0x5

    const-wide v6, -0x3ddbd56e69700000L    # -4.3306765128E10

    const-wide v8, 0x41f3cbaf3df00000L    # 5.313852383E9

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 289
    const/16 v3, 0x9

    aget-object v3, v0, v3

    const-wide v4, -0x3d4d059742bc0000L    # -2.0866708358144E13

    const-wide v6, 0x42706550988ed000L    # 1.126708119789E12

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v3, v11

    .line 290
    const/16 v3, 0x9

    aget-object v3, v0, v3

    const/4 v4, 0x7

    const-wide v6, 0x42ab13d5e4e38800L    # 1.488600343802E13

    const-wide v8, 0x42630d6414b56000L    # 6.54632330667E11

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 291
    const/16 v3, 0x9

    aget-object v3, v0, v3

    const/16 v4, 0x8

    const-wide v6, 0x435f582c4c0a4600L    # 3.5290686222309376E16

    const-wide v8, 0x434923ccbe7776e6L    # 1.4152473387134412E16

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 292
    const/16 v3, 0x9

    aget-object v3, v0, v3

    const/16 v4, 0x9

    const-wide v6, -0x3e29fa518a400000L    # -1.477884375E9

    const-wide v8, 0x41bce9884b000000L    # 4.85066827E8

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 294
    const/16 v3, 0xa

    aget-object v3, v0, v3

    const-wide v4, 0x4182fc5288000000L    # 3.9815761E7

    const-wide v6, 0x4170b3fcb0000000L    # 1.7514443E7

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v3, v12

    .line 295
    const/16 v3, 0xa

    aget-object v4, v0, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v10

    .line 296
    const/16 v3, 0xa

    aget-object v4, v0, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v13

    .line 297
    const/16 v3, 0xa

    aget-object v4, v0, v3

    const-wide v6, -0x3ed2acee00000000L    # -960905.0

    invoke-interface {v2, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, -0x3eb59f1c00000000L    # -3457480.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x4120d5a800000000L    # 551636.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v14

    .line 298
    const/16 v3, 0xa

    aget-object v4, v0, v3

    const/4 v5, 0x4

    const-wide v6, 0x412d531200000000L    # 960905.0

    invoke-interface {v2, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, -0x3eb59f1c00000000L    # -3457480.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x4120d5a800000000L    # 551636.0

    invoke-interface {v3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v5

    .line 299
    const/16 v3, 0xa

    aget-object v3, v0, v3

    const/4 v4, 0x5

    const-wide v6, -0x3e36d49036000000L    # -8.44554132E8

    const-wide v8, 0x41866c98c8000000L    # 4.7026969E7

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 300
    const/16 v3, 0xa

    aget-object v3, v0, v3

    const-wide v4, 0x41ff75c6b0000000L    # 8.444996352E9

    const-wide v6, 0x41b202931b000000L    # 3.02158619E8

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v3, v11

    .line 301
    const/16 v3, 0xa

    aget-object v3, v0, v3

    const/4 v4, 0x7

    const-wide v6, -0x3e1d4d503b400000L    # -2.509602342E9

    const-wide v8, 0x41ca290320800000L    # 8.77790785E8

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 302
    const/16 v3, 0xa

    aget-object v3, v0, v3

    const/16 v4, 0x8

    const-wide v6, -0x3ca6c922a12a588aL    # -2.838879529799625E16

    const-wide v8, 0x4326bbdffce6b4deL    # 3.199510091356783E15

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 303
    const/16 v3, 0xa

    aget-object v3, v0, v3

    const/16 v4, 0x9

    const-wide v6, 0x41ab06d4b4000000L    # 2.2671625E8

    const-wide v8, 0x41717e0090000000L    # 1.8341897E7

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 304
    const/16 v3, 0xa

    aget-object v3, v0, v3

    const/16 v4, 0xa

    const-wide v6, 0x41d46f2882000000L    # 1.371316744E9

    const-wide v8, 0x41dfc2954ac00000L    # 2.131383595E9

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 308
    const/16 v3, 0xb

    aget-object v3, v0, v3

    const-wide v4, 0x40f9741000000000L    # 104257.0

    const-wide v6, 0x413d4cf000000000L    # 1920240.0

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v3, v12

    .line 309
    const/16 v3, 0xb

    aget-object v4, v0, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v10

    .line 310
    const/16 v3, 0xb

    aget-object v4, v0, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v13

    .line 311
    const/16 v3, 0xb

    aget-object v4, v0, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v14

    .line 312
    const/16 v3, 0xb

    aget-object v4, v0, v3

    const/4 v5, 0x4

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v5

    .line 313
    const/16 v3, 0xb

    aget-object v3, v0, v3

    const/4 v4, 0x5

    const-wide v6, 0x4149ef4f80000000L    # 3399327.0

    const-wide v8, 0x41274f8000000000L    # 763840.0

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 314
    const/16 v3, 0xb

    aget-object v3, v0, v3

    const-wide v4, 0x418fbf4000000000L    # 6.6578432E7

    const-wide v6, 0x4180c8ae78000000L    # 3.5198415E7

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v3, v11

    .line 315
    const/16 v3, 0xb

    aget-object v3, v0, v3

    const/4 v4, 0x7

    const-wide v6, -0x3e270ac0cf400000L    # -1.674902723E9

    const-wide v8, 0x41b1357670000000L    # 2.887164E8

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 316
    const/16 v3, 0xb

    aget-object v3, v0, v3

    const/16 v4, 0x8

    const-wide v6, 0x42c9008ebfdc2c80L    # 5.4980371265625E13

    const-wide v8, 0x42e4166cc96ea800L    # 1.76692375811392E14

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 317
    const/16 v3, 0xb

    aget-object v3, v0, v3

    const/16 v4, 0x9

    const-wide v6, -0x3ed996b200000000L    # -734375.0

    const-wide v8, 0x4152693000000000L    # 4826304.0

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 318
    const/16 v3, 0xb

    aget-object v3, v0, v3

    const/16 v4, 0xa

    const-wide v6, 0x41a46f2882000000L    # 1.71414593E8

    const-wide v8, 0x41c95e9bec000000L    # 8.512614E8

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 319
    const/16 v3, 0xb

    aget-object v3, v0, v3

    const/16 v4, 0xb

    const-wide v6, 0x4100d5a800000000L    # 137909.0

    const-wide v8, 0x4147886000000000L    # 3084480.0

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 322
    const/16 v3, 0xc

    aget-object v3, v0, v3

    const-wide v4, 0x42091ca9fc280000L    # 1.3481885573E10

    const-wide v6, 0x424bf17391c00000L    # 2.4003E11

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v3, v12

    .line 323
    const/16 v3, 0xc

    aget-object v4, v0, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v10

    .line 324
    const/16 v3, 0xc

    aget-object v4, v0, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v13

    .line 325
    const/16 v3, 0xc

    aget-object v4, v0, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v14

    .line 326
    const/16 v3, 0xc

    aget-object v4, v0, v3

    const/4 v5, 0x4

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v5

    .line 327
    const/16 v3, 0xc

    aget-object v4, v0, v3

    const/4 v5, 0x5

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v5

    .line 328
    const/16 v3, 0xc

    aget-object v3, v0, v3

    const-wide v4, 0x42403b01510c0000L    # 1.39418837528E11

    const-wide v6, 0x426001a282e8e000L    # 5.49975234375E11

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v3, v11

    .line 329
    const/16 v3, 0xc

    aget-object v3, v0, v3

    const/4 v4, 0x7

    const-wide v6, -0x3d5bcb490e794a00L    # -1.1108320068443E13

    const-wide v8, 0x42c483b88141b000L    # 4.51119375E13

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 330
    const/16 v3, 0xc

    aget-object v3, v0, v3

    const/16 v4, 0x8

    const-wide v6, -0x3ce6da0bae7ab6e4L    # -1.769651421925959E15

    const-wide v8, 0x43494fdec1f32d80L    # 1.424938514608E16

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 331
    const/16 v3, 0xc

    aget-object v3, v0, v3

    const/16 v4, 0x9

    const-wide v6, 0x418b8f9878000000L    # 5.7799439E7

    const-wide v8, 0x41b6796718000000L    # 3.77055E8

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 332
    const/16 v3, 0xc

    aget-object v3, v0, v3

    const/16 v4, 0xa

    const-wide v6, 0x426716b6dbcaa000L    # 7.93322643029E11

    const-wide v8, 0x42d5feaca6f7a000L    # 9.673425E13

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 333
    const/16 v3, 0xc

    aget-object v3, v0, v3

    const/16 v4, 0xb

    const-wide v6, 0x41d5bd696bc00000L    # 1.458939311E9

    const-wide v8, 0x4246714aad800000L    # 1.9278E11

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 334
    const/16 v3, 0xc

    aget-object v3, v0, v3

    const/16 v4, 0xc

    const-wide v6, -0x3f4fcb0000000000L    # -4149.0

    const-wide v8, 0x411e848000000000L    # 500000.0

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 336
    const/16 v3, 0xd

    aget-object v3, v0, v3

    const-wide v4, 0x427737edce59b000L    # 1.595561272731E12

    const-wide v6, 0x42c6cac48c8bb000L    # 5.01202735E13

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v3, v12

    .line 337
    const/16 v3, 0xd

    aget-object v4, v0, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v10

    .line 338
    const/16 v3, 0xd

    aget-object v4, v0, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v13

    .line 339
    const/16 v3, 0xd

    aget-object v4, v0, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v14

    .line 340
    const/16 v3, 0xd

    aget-object v4, v0, v3

    const/4 v5, 0x4

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v5

    .line 341
    const/16 v3, 0xd

    aget-object v3, v0, v3

    const/4 v4, 0x5

    const-wide v6, 0x426c61afb5b96000L    # 9.75183916491E11

    const-wide v8, 0x42bf56ce41401200L    # 3.445768803125E13

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 342
    const/16 v3, 0xd

    aget-object v3, v0, v3

    const-wide v4, 0x42c1810f68984000L    # 3.8492013932672E13

    const-wide v6, 0x43046ec733ff3a48L    # 7.18912673015625E14

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v3, v11

    .line 343
    const/16 v3, 0xd

    aget-object v3, v0, v3

    const/4 v4, 0x7

    const-wide v6, -0x3cf0502bc79a6658L    # -1.114881286517557E15

    const-wide v8, 0x43520764792c7eb8L    # 2.02987107675E16

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 344
    const/16 v3, 0xd

    aget-object v4, v0, v3

    const/16 v5, 0x8

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v5

    .line 345
    const/16 v3, 0xd

    aget-object v4, v0, v3

    const/16 v5, 0x9

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v5

    .line 346
    const/16 v3, 0xd

    aget-object v3, v0, v3

    const/16 v4, 0xa

    const-wide v6, -0x3d7d8748495e8800L    # -2.538710946863E12

    const-wide v8, 0x4354cfa4f7548bf4L    # 2.343122786125E16

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 347
    const/16 v3, 0xd

    aget-object v3, v0, v3

    const/16 v4, 0xb

    const-wide v6, 0x42006fece1c80000L    # 8.824659001E9

    const-wide v8, 0x42b4faa375bac200L    # 2.306671678125E13

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 348
    const/16 v3, 0xd

    aget-object v3, v0, v3

    const/16 v4, 0xc

    const-wide v6, -0x3dfa8ba14ce80000L    # -1.1518334563E10

    const-wide v8, 0x42bec4efbdbc9400L    # 3.38311846125E13

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 349
    const/16 v3, 0xd

    aget-object v3, v0, v3

    const/16 v4, 0xd

    const-wide v6, 0x41dc7edf41000000L    # 1.912306948E9

    const-wide v8, 0x420934c94fa80000L    # 1.3532473845E10

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 351
    const/16 v3, 0xe

    aget-object v3, v0, v3

    const-wide v4, -0x3df6a4585b480000L    # -1.3613986967E10

    const-wide v6, 0x421d8fdc51400000L    # 3.1741908048E10

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v3, v12

    .line 352
    const/16 v3, 0xe

    aget-object v4, v0, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v10

    .line 353
    const/16 v3, 0xe

    aget-object v4, v0, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v13

    .line 354
    const/16 v3, 0xe

    aget-object v4, v0, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v14

    .line 355
    const/16 v3, 0xe

    aget-object v4, v0, v3

    const/4 v5, 0x4

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v5

    .line 356
    const/16 v3, 0xe

    aget-object v3, v0, v3

    const/4 v4, 0x5

    const-wide v6, -0x3e0e48b1c2900000L    # -4.755612631E9

    const-wide v8, 0x41ce2b93f2000000L    # 1.012344804E9

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 357
    const/16 v3, 0xe

    aget-object v3, v0, v3

    const-wide v4, 0x42c386c99bbd0000L    # 4.2939257944576E13

    const-wide v6, 0x429454c075a11400L    # 5.588559685701E12

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    aput-object v4, v3, v11

    .line 358
    const/16 v3, 0xe

    aget-object v3, v0, v3

    const/4 v4, 0x7

    const-wide v6, 0x42d1b553d5106d40L    # 7.7881972900277E13

    const-wide v8, 0x42b16876fcd87000L    # 1.9140370552944E13

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 359
    const/16 v3, 0xe

    aget-object v3, v0, v3

    const/16 v4, 0x8

    const-wide v6, 0x42b4a9df59d2c700L    # 2.2719829234375E13

    const-wide v8, 0x42ccf67371237200L    # 6.3689648654052E13

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 360
    const/16 v3, 0xe

    aget-object v4, v0, v3

    const/16 v5, 0x9

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v5

    .line 361
    const/16 v3, 0xe

    aget-object v4, v0, v3

    const/16 v5, 0xa

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v5

    .line 362
    const/16 v3, 0xe

    aget-object v4, v0, v3

    const/16 v5, 0xb

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v4, v5

    .line 363
    const/16 v3, 0xe

    aget-object v3, v0, v3

    const/16 v4, 0xc

    const-wide v6, -0x3e2e2225f1400000L    # -1.199007803E9

    const-wide v8, 0x4268f161e48e0000L    # 8.57031517296E11

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 364
    const/16 v3, 0xe

    aget-object v3, v0, v3

    const/16 v4, 0xd

    const-wide v6, 0x42426140941c0000L    # 1.57882067E11

    const-wide v8, 0x4228f161e48e0000L    # 5.3564469831E10

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 365
    const/16 v3, 0xe

    aget-object v3, v0, v3

    const/16 v4, 0xe

    const-wide v6, -0x3daf17ad260e4000L    # -2.90468882375E11

    const-wide v8, 0x421d8fdc51400000L    # 3.1741908048E10

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    .line 367
    return-object v0
.end method

.method public getB()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 373
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 374
    .local v0, "b":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v1, 0x0

    const v2, 0x19741

    const v3, 0x1d4cf0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 375
    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v0, v2

    .line 376
    const/4 v2, 0x2

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v0, v2

    .line 377
    const/4 v2, 0x3

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v0, v2

    .line 378
    const/4 v2, 0x4

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v0, v2

    .line 379
    const/4 v1, 0x5

    const-wide v2, 0x4149ef4f80000000L    # 3399327.0

    const-wide v4, 0x41274f8000000000L    # 763840.0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 380
    const/4 v1, 0x6

    const-wide v2, 0x418fbf4000000000L    # 6.6578432E7

    const-wide v4, 0x4180c8ae78000000L    # 3.5198415E7

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 381
    const/4 v1, 0x7

    const-wide v2, -0x3e270ac0cf400000L    # -1.674902723E9

    const-wide v4, 0x41b1357670000000L    # 2.887164E8

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 382
    const/16 v1, 0x8

    const-wide v2, 0x42c9008ebfdc2c80L    # 5.4980371265625E13

    const-wide v4, 0x42e4166cc96ea800L    # 1.76692375811392E14

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 383
    const/16 v1, 0x9

    const-wide v2, -0x3ed996b200000000L    # -734375.0

    const-wide v4, 0x4152693000000000L    # 4826304.0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 384
    const/16 v1, 0xa

    const-wide v2, 0x41a46f2882000000L    # 1.71414593E8

    const-wide v4, 0x41c95e9bec000000L    # 8.512614E8

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 385
    const/16 v1, 0xb

    const-wide v2, 0x4100d5a800000000L    # 137909.0

    const-wide v4, 0x4147886000000000L    # 3084480.0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 386
    const/16 v2, 0xc

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v0, v2

    .line 387
    const/16 v2, 0xd

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v0, v2

    .line 388
    const/16 v2, 0xe

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v0, v2

    .line 389
    const/16 v2, 0xf

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v0, v2

    .line 390
    return-object v0
.end method

.method public getC()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator<TT;>;"
    const/4 v11, 0x6

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const-wide/high16 v6, -0x3fe8000000000000L    # -6.0

    .line 196
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 198
    .local v1, "sqrt6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    const/16 v3, 0xf

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 199
    .local v0, "c":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v3, 0x0

    invoke-interface {v1, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v4, -0x3faf200000000000L    # -67.5

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v0, v3

    .line 200
    invoke-interface {v1, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v4, -0x3fb9800000000000L    # -45.0

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v0, v8

    .line 201
    const/4 v3, 0x2

    invoke-interface {v1, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v4, -0x3fc2000000000000L    # -30.0

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v0, v3

    .line 202
    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v0, v9

    .line 203
    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v10

    .line 204
    const/4 v2, 0x5

    invoke-virtual {p0, v8, v10}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v0, v2

    .line 205
    const/16 v2, 0xd

    invoke-virtual {p0, v10, v2}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v11

    .line 206
    const/4 v2, 0x7

    const/16 v3, 0x7f

    const/16 v4, 0xc3

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v0, v2

    .line 207
    const/16 v2, 0x8

    const/4 v3, 0x5

    invoke-virtual {p0, v9, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v0, v2

    .line 208
    const/16 v2, 0x9

    const/4 v3, 0x7

    invoke-virtual {p0, v11, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v0, v2

    .line 209
    const/16 v3, 0xa

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v0, v3

    .line 210
    const/16 v3, 0xb

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v0, v3

    .line 211
    const/16 v2, 0xc

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v0, v2

    .line 212
    const/16 v2, 0xd

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v0, v2

    .line 213
    const/16 v2, 0xe

    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;->fraction(DD)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v0, v2

    .line 215
    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 408
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853FieldIntegrator<TT;>;"
    const/16 v0, 0x8

    return v0
.end method
